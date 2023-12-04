import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';

class AnnouncementModel {
  TextEditingController textController = TextEditingController();

  String error = " ";
}

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
                offset: Offset(5,5),
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AdminLogin()));
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
                      padding: EdgeInsets.symmetric(vertical: 50,horizontal: 50,)
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserAnnouncements()));
                    },
                    child:Text(
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
                        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 50,)

                    ),
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

class SelectGroup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class AdminCreateAccount extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[200],
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
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
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
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
                controller: usernameController,
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              // password textbox
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: const TextStyle(color: Colors.grey,),
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
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(color: Colors.grey,),
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
                controller: passwordController,
                obscureText: true,
              ),
              // login button
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AdminLogin()));
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
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
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AdminLogin()));
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
    );
  }
}

class AdminLogin extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late SharedPreferences sharedPreferences;

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
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
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
                  controller: usernameController,
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),
                // password textbox
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(color: Colors.grey,),
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
                  controller: passwordController,
                  obscureText: true,
                ),
                // login button
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    String userName = usernameController.text.trim();
                    String passWord = passwordController.text.trim();
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
                          .collection("Admin")
                          .where('Username', isEqualTo: userName).get();
                      try {
                        if (passWord == snap.docs[0]['Password']) {
                          sharedPreferences = await SharedPreferences.getInstance();
                          sharedPreferences.setString('Username', userName).then((_) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => AdminMessaging()));
                          });
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
                  height: 15,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
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

class AdminMessaging extends StatelessWidget {
  TextEditingController textController = TextEditingController();

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
                      .collection('Announcements')
                      .orderBy(
                        'Date',
                        descending: false,
                      )
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final post = snapshot.data!.docs[index];
                          return DisplayAnnouncements(
                            message: post['Message'],
                            time: post['Date'],
                          );
                        },
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
                        controller: textController,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        String message = textController.text;
                        String time = DateTime.timestamp().toString();
                        addMessage(message, time);
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

  @override
  void addMessage(String message, String time) {
    FirebaseFirestore.instance.collection('Announcements').add({
      'Message': message,
      'Date': time,
    });
  }
}

class UserAnnouncements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcements'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Announcements')
                      .orderBy(
                        'Date',
                        descending: false,
                      )
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final post = snapshot.data!.docs[index];
                          return DisplayAnnouncements(
                            message: post['Message'],
                            time: post['Date'],
                          );
                        },
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayAnnouncements extends StatelessWidget {
  AnnouncementModel announcementModel = AnnouncementModel();
  final String message;
  final String time;

  DisplayAnnouncements({
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
