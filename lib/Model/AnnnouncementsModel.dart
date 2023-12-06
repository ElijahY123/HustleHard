import 'package:firstapp/Views/Announcements.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnnouncementModel {
  TextEditingController textController = TextEditingController();
  TextEditingController groupNameController = TextEditingController();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String get userName => usernameController.text.trim();
  String get passWord => passwordController.text.trim();
  String get groupName => groupNameController.text.trim();

  late SharedPreferences sharedPreferences;
  final adminsRef = FirebaseFirestore.instance.collection('Admins');
  final groupsRef2 = FirebaseFirestore.instance.collection('Workout Groups');

  String error = " ";

  /**
   * Checks the Firestore Database for a Username and Password created.
   * @author: Elijah Yeboah
   * @param: Context - Helps navigate to AdminView if successful.
   * @return: none
   */
  void retrieveLoginInfo(BuildContext context) async {
    if (userName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("No username has been entered"),
      ));
    } else if (passWord.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("No password has been entered"),
      ));
    } else {
      adminsRef.get().then((QuerySnapshot snapshot) {
        snapshot.docs.forEach((DocumentSnapshot doc) {
          adminsRef.doc(doc.id).get().then((DocumentSnapshot doc) {
            try {
              if (userName == doc['Username'] && passWord == doc['Password']) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AdminView()));
              } else if (userName == doc['Username'] &&
                  passWord != doc['Password']) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Invalid Password"),
                ));
              } else if (userName != doc['Username'] &&
                  passWord == doc['Password']) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Invalid Username"),
                ));
              }
            } catch (e) {
              String error = " ";
              if (e.toString() ==
                  "RangeError (index): Invalid value: Valid value range is empty: 0") {
                error = "Invalid Username";
              } else {
                error = "Invalid Password";
              }
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(error),
              ));
            }
          });
        });
      });
    }
  }

  /**
   * Adds username and password to collection Admins on Firebase.
   * @author: Elijah Yeboah
   * @param: Username - Takes in a string username.
   * @param: Password - Takes in a string password.
   * @return: none
   */
  void addAccount(String userName, String passWord) {
    FirebaseFirestore.instance.collection('Admins').add({
      'Username': userName,
      'Password': passWord,
    });
  }

  /**
   * Adds group name to subcollection Workout Groups on Firebase.
   * @author: Elijah Yeboah
   * @param: GroupName - Takes in a string group name.
   * @param: Context - Builds a widget of the group name.
   * @return: none
   */
  void addGroup(String groupName, BuildContext context) {
    adminsRef.get().then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((DocumentSnapshot doc) {
        adminsRef.doc(doc.id).get().then((DocumentSnapshot doc) {
          if (userName == doc['Username']) {
            FirebaseFirestore.instance
                .collection('Admins')
                .doc(doc.id)
                .collection('Workout Groups')
                .add({
              'GroupName': groupName,
            });
          }
        });
      });
    });
    getGroups(groupName);
  }

  /**
   * Retrieves group name from collection Admins and stores in a new collection
   * Workout Groups later for the User View.
   * @author: Elijah Yeboah
   * @param: GroupName - Takes in a string group name.
   * @return: none
   */
  void getGroups(String groupName) {
    FirebaseFirestore.instance
        .collection('Workout Groups')
        .add({'GroupName': groupName,});
  }

  /**
   * Adds message and time to collection Admins, subcollection Workout Groups
   * , subcollection Messages on Firebase.
   * @author: Elijah Yeboah
   * @param: Message - Takes in a string string.
   * @param: Time - Takes in a string time.
   * @return: none
   */
  void addMessage(String message, String time) {
    adminsRef.get().then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((DocumentSnapshot doc) {
        adminsRef.doc(doc.id).get().then((DocumentSnapshot doc) {
          final groupsRef = FirebaseFirestore.instance
              .collection('Admins').doc(doc.id)
              .collection('Workout Groups');
          groupsRef.get().then((QuerySnapshot snapshot) {
            snapshot.docs.forEach((DocumentSnapshot doc2) {
              groupsRef.doc(doc2.id).get().then((DocumentSnapshot doc2) {
                if (groupName == doc2['GroupName']) {
                  FirebaseFirestore.instance
                      .collection('Admins').doc(doc.id)
                      .collection('Workout Groups').doc(doc2.id)
                      .collection('Messages')
                      .add({
                    'Message': message,
                    'Date': time,
                  });
                }
              });
            });
          });
          getMessage(message, time);
        });
      });
    });
  }

  /**
   * Adds message and time to collection Workout Groups
   * , subcollection Messages on Firebase later for User View use.
   * @author: Elijah Yeboah
   * @param: Message - Takes in a string string.
   * @param: Time - Takes in a string time.
   * @return: none
   */
  void getMessage(String message, String time) {
    groupsRef2.get().then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((DocumentSnapshot doc) {
        groupsRef2.doc(doc.id).get().then((DocumentSnapshot doc) {
          if (groupName == doc['GroupName']) {
            FirebaseFirestore.instance
                .collection('Workout Groups').doc(doc.id)
                .collection('Messages')
                .add({
              'Message': message,
              'Date': time,
            });
          }
        });
      });
    });
  }



}
