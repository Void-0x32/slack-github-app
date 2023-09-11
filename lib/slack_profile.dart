import 'package:flutter/material.dart';

class SlackProfile extends StatelessWidget {
  const SlackProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1D1F33),
        title: const Text('SlackID'),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // show my slack identity (name, username, etc.),
              // show slack profile picture
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  "images/profile-picture.jpg",
                ),
              ),
              Text(
                'Shammah Sopulu',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MOBILE DEVELOPER | FLUTTER | DART',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 15.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'HNGx INTERN | MOBILE TRACK, 1️⃣',
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 15.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Color.fromARGB(255, 20, 37, 36),
                ),
              ),
              Card(
                color:  Color(0xff1D1F33),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person_3_sharp,
                      color: Color(0xff000000),
                    ),
                    title: Text(
                      'Display Name: void0x32 ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                color:  Color(0xff1D1F33),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xff000000),
                    ),
                    title: Text(
                      'shammahsopulu0@gmail.com',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}