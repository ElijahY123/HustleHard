import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AnnouncementModel {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController textController = TextEditingController();

  String get userName => usernameController.text.trim();
  String get passWord => passwordController.text.trim();

  String get message => textController.text;
  String time = DateTime.now().toString();

  @override
  void getUsername(BuildContext context) async {
    QuerySnapshot snap = await FirebaseFirestore.instance
        .collection("Admin")
        .where('Username', isEqualTo: userName)
        .get();
  }

  @override
  void addMessage() {
    FirebaseFirestore.instance.collection("Announcements").add({
      'Message': message,
      'Date': time,
    });
  }
}
