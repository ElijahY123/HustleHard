import 'package:flutter/material.dart';
import '../Model/AnnouncementModel.dart';

class SelectUser extends StatelessWidget {
  late AnnouncementModel announcementModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ImageIcon(
                AssetImage("images/AnnouncementsIcon.png"),
                size: 80,
              ),
              SizedBox(height: 50,),
              const Text(
                "Welcome to GetFit Announcements",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 25,),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AdminPage(
                        userName: announcementModel.userName,
                        passWord: announcementModel.passWord,
                        usernameController: announcementModel.usernameController,
                        passwordController: announcementModel.passwordController,
                      )));
                },
                child: const Text('Admin'),
                style: ElevatedButton.styleFrom(
                  elevation: 22,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Announcements()));
                },
                child: const Text('User'),
                style: ElevatedButton.styleFrom(
                  elevation: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminPage extends StatelessWidget {
  late AnnouncementModel a_Model;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final String userName;
  final String passWord;

  AdminPage({
    required this.usernameController,
    required this.passwordController,
    required this.userName,
    required this.passWord,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage("images/AdminIcon.png"),
                  size: 80,
                ),
                SizedBox(height: 50,),
                const Text(
                  "Welcome to GetFit Announcements",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25,),
                // username textbox
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  controller: usernameController,
                  obscureText: false,
                ),
                SizedBox(height: 10,),
                // password textbox
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(color: Colors.grey,),
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                  controller: passwordController,
                  obscureText: true,
                ),
                // login button
                SizedBox(height: 25,),
                GestureDetector(
                  onTap: () {
                    a_Model.getUsername(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent.shade100,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Center(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
