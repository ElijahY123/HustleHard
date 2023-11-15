import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AnnouncementModel {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String get userName => usernameController.text.trim();
  String get passWord => passwordController.text.trim();

  @override
  void getUsername(BuildContext context) async {
      QuerySnapshot snap = await FirebaseFirestore.instance
          .collection("Admin").where('Username', isEqualTo: userName).get();
  }
}