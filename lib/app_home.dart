import 'package:flutter/material.dart';
import 'package:hngx_slack_id/github_webview.dart';
import 'slack_profile.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1D1F33),
          title: const Center(
            child: Text('Slack-GitHub Profile App'),
          ),
        ),
        backgroundColor: const Color(0xFF090C20),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hi There, I'm Shammah Sopulu",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tap on any of the buttons to view my profile',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
            ),
            ContainerPacket(
              colour: const Color(0xff111428),
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Image.asset(
                      'images/slack_logo.png',
                      width: 140,
                      height: 123,
                    ),
                  ),
                  const Center(
                    child: Text(
                      'View Slack ID ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              onPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const SlackProfile(),
                ),
              ),
            ),
            // Open GitHub button
            ContainerPacket(
              colour: const Color(0xff111428),
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Image.asset(
                      'images/github-logo.png',
                      width: 120,
                      height: 121,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Open Github',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              onPress: () {
                // button to navigate to my GitHub profile using WebView
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GitHubWebView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// custom container widget
class ContainerPacket extends StatelessWidget {
  const ContainerPacket(
      {super.key, this.colour, required this.containerChild, this.onPress});

  final Color? colour;
  final Widget containerChild;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadiusDirectional.circular(10.0),
        ),
        child: containerChild,
      ),
    );
  }
}
