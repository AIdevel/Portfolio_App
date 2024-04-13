import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 255),
    Color.fromARGB(255, 33, 170, 97)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader highlightGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 255),
    Color.fromARGB(255, 255, 255, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader overallTextGradient = LinearGradient(colors: <Color>[
    //Color(0xff1f005c),
    // Color(0xff5b0060),
    // Color(0xff870160),
    Color(0xffac255e),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color(0xfff39060),
    Color.fromARGB(255, 255, 89, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  myPro(lang, title, desc, rate) {
    return Container(
        height: 195,
        width: MediaQuery.of(context).size.width * 0.98,
        child: Card(
          color: Color(0xff262628),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 12, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang,
                  style: TextStyle(
                      foreground: Paint()..shader = highlightGradient,
                      fontSize: 18,
                      fontFamily: 'soho'),
                ),
                Text(
                  title,
                  style: TextStyle(
                      // color: Colors.white,
                      foreground: Paint()..shader = overallTextGradient,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  desc,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      rate,
                      style: TextStyle(color: Colors.white70),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {
                          launchUrl(Uri.parse(
                              'https://github.com/AIdevel?tab=repositories'));
                        },
                        icon: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(163, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 23,
        ),
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                myPro('FLUTTER & DART', 'Chat Up', 'Chatting App', '4.9'),
                myPro('Kotlin & XML', 'Attendify',
                    'Maintaing Student Attendance', '4.8'),
                myPro('FLUTTER & DART', 'Xylophone', 'Music Player App', '4.8'),
                myPro('FLUTTER & DART', 'BMI Calculator',
                    'Give Correct BMI & Suggestion', '4.7'),
                myPro('KOTLIN & XMl', 'E-Books', 'Online E-Books for Students',
                    '4.7'),
                myPro('FLUTTER & DART', 'Quizzer', 'Quiz App', '4.6'),
                myPro('FLUTTER & DART', 'Weather App',
                    'Live Weather & Temperature', '4.5'),
                myPro('HTML,CSS & Js', 'Pixlo', 'Images Collecton Website',
                    '4.5'),
                myPro('FLUTTER & DART', 'Dice Game', 'Predicting Number Game',
                    '4.4'),
                myPro('FLUTTER & DART', 'Bitcoin Ticker',
                    'Currencies Convertors', '4.4'),
                myPro('FLUTTER & DART', 'Task Tracker',
                    'Daily Works Routine Records', '4.3'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
