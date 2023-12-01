import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:firstapp/Model/AnnnouncementsModel.dart';

class SelectUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Announcements",
          style: GoogleFonts.sedgwickAve(
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropShadowImage(
                image: Image.asset("assets/images/AnnouncementsIcon.png"),
                borderRadius: 20,
                blurRadius: 20,
                offset: Offset(5, 5),
                scale: 1.05,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdminLogin()));
                    },
                    child: Text(
                      'Admin',
                      style: GoogleFonts.loveYaLikeASister(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 22,
                        padding: EdgeInsets.symmetric(
                          vertical: 50,
                          horizontal: 50,
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => null as Widget));
                    },
                    child: Text(
                      'User',
                      style: GoogleFonts.loveYaLikeASister(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 22,
                        padding: EdgeInsets.symmetric(
                          vertical: 50,
                          horizontal: 50,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminCreateAccount extends StatelessWidget {
  AnnouncementModel announcementModel = AnnouncementModel();
  TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[200],
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/AdminIcon.png",
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    "Create Username and Password to Signup",
                    style: GoogleFonts.sedgwickAve(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // username textbox
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      hintStyle: const TextStyle(color: Colors.grey),
                      fillColor: Colors.grey[300],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    controller: announcementModel.usernameController,
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // password textbox
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    controller: announcementModel.passwordController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    controller: confirmController,
                    obscureText: true,
                  ),
                  // login button
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      if (confirmController.text.trim() ==
                          announcementModel.passWord) {
                        announcementModel.addAccount(announcementModel.userName,
                            announcementModel.passWord);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminLogin()));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Passwords Do Not Match"),
                        ));
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Center(
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            color: Colors.lightBlueAccent[200],
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminLogin()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AdminLogin extends StatelessWidget {
  AnnouncementModel announcementModel = AnnouncementModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[200],
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/AdminIcon.png",
                  height: 100,
                  width: 100,
                ),
                Text(
                  "Enter Username and Password to Login",
                  style: GoogleFonts.sedgwickAve(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // username textbox
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.grey[300],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  controller: announcementModel.usernameController,
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),
                // password textbox
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    fillColor: Colors.grey[300],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  controller: announcementModel.passwordController,
                  obscureText: true,
                ),
                // login button
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    announcementModel.retrieveLoginInfo(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.lightBlueAccent[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminCreateAccount()));
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdminView extends StatelessWidget {
  AnnouncementModel announcementModel = AnnouncementModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Groups",
          style: GoogleFonts.sedgwickAve(
              textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Group Name',
                              hintStyle: const TextStyle(color: Colors.grey),
                              fillColor: Colors.grey[300],
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            controller: announcementModel.groupNameController,
                            obscureText: false,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                announcementModel.addGroup(
                                  announcementModel.groupName,
                                );
                              },
                              child: Text("Create"),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text("Create Group"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('Admins')
                    .doc('0')
                    .collection('Groups')
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Container(
                    height: 200,
                    child: ListView(
                      children: snapshot.data!.docs.map((snap) {
                        return Card(
                          elevation: 30,
                          child: ListTile(
                            title: Text(
                              snap['GroupName'].toString(),
                              style: GoogleFonts.loveYaLikeASister(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          GroupMessages()));
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminView2 extends StatelessWidget {
  AnnouncementModel announcementModel = AnnouncementModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Groups"),
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Admins')
            .doc('0')
            .collection('Groups')
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                child: ListView(
                  children: snapshot.data!.docs.map((snap) {
                    return Card(
                      elevation: 30,
                      child: ListTile(
                        title: Text(
                          snap['GroupName'].toString(),
                          style: GoogleFonts.loveYaLikeASister(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GroupMessages()));
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class GroupMessages extends StatelessWidget {
  AnnouncementModel announcementModel = AnnouncementModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Admins')
                      .doc('$announcementModel.counter')
                      .collection('Groups')
                      .doc()
                      .collection('Messages')
                      .orderBy(
                        'Date',
                        descending: false,
                      )
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Center(
                        child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            final post = snapshot.data!.docs[index];
                            return MessageBox(
                              message: post['Message'],
                              time: post['Date'],
                            );
                          },
                        ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Message',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
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
                        controller: announcementModel.textController,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        String message = announcementModel.textController.text;
                        String time = DateTime.timestamp().toString();
                        announcementModel.addMessage(message, time);
                      },
                      icon: Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageBox extends StatelessWidget {
  AnnouncementModel announcementModel = AnnouncementModel();
  final String message;
  final String time;

  MessageBox({
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent[100],
        borderRadius: BorderRadius.circular(9),
      ),
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message),
              Text("$time"),
            ],
          ),
        ],
      ),
    );
  }
}
