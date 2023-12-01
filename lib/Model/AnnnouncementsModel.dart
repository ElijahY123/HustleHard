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

  String error = " ";
  int counter = 0;
  int docID = 0;


  void retrieveLoginInfo(BuildContext context) async {
    if (userName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("No username has been entered"),
      ));
    }
    else if (passWord.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("No password has been entered"),
      ));
    }
    else {
      QuerySnapshot snap = await FirebaseFirestore.instance
          .collection('Admins').doc('$counter')
          .collection('AccountInfo').get();

      try {
        if (passWord == snap.docs[counter]['Password']){
          sharedPreferences = await SharedPreferences.getInstance();
          sharedPreferences.setString('Username', userName).then((_) {
          });
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => AdminView()
          ));
        }
        else {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(
            content: Text("Invalid Password"),
          ));
        }
      }
      catch (e) {
        String error = " ";
        if (e.toString() ==
            "RangeError (index): Invalid value: Valid value range is empty: 0") {
          error = "Invalid Username";
        }
        else {
          error = "Invalid Password";
        }
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(error),
        ));
      }
    }
  }

  void addAccount(String userName, String passWord) {
    FirebaseFirestore.instance
        .collection('Admins').doc('$counter')
        .collection('AccountInfo').add({
      'Username' : userName,
      'Password' : passWord,
    });
    counter += 1;
  }

  void addGroup(String groupName) {
    FirebaseFirestore.instance
        .collection('Admins').doc('$counter')
        .collection('Groups').doc('$docID')
        .set({
      'GroupName': groupName,
    });
    docID += 1;
  }

  void addMessage(String message, String time,) {
    FirebaseFirestore.instance
        .collection('Admins').doc('$counter')
        .collection('Groups').doc('$docID')
        .collection('Messages'). add({
      'Message' : message,
      'Time' : time,
    });
  }

}