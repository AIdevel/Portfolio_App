import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 255),
    Color.fromARGB(255, 33, 170, 97)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader highlightGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 255),
    Color.fromARGB(255, 255, 255, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader overallTextGradient = LinearGradient(colors: <Color>[
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xffac255e),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color(0xfff39060),
    Color.fromARGB(255, 255, 89, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(163, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.all(40.0),
                child: ShaderMask(
                  shaderCallback: (bound) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                      Rect.fromLTRB(0, 0, bound.width, bound.height),
                    );
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'icons/d.png',
                    height: 400.0,
                    fit: BoxFit.contain,
                  ),
                )),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.46),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'Hello I am',
                    style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.w300,
                        //foreground: Paint()..shader = headerGradient,
                        //color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Sanjay Shaw',
                    style: TextStyle(
                        foreground: Paint()..shader = headerGradient,
                        //color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'soho',
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '@ Crazy_Flutter',
                    style: TextStyle(
                      foreground: Paint()..shader = highlightGradient,
                      //color: Colors.white,
                      fontSize: 30,
                      //fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 120.0,
                    child: TextButton(
                      onPressed: () => launchUrl(Uri.parse(
                          'https://www.linkedin.com/in/sanjay-shaw-6a70a7178')),
                      child: Text(
                        'Hire Me',
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            )
            // Text(
            //   'Developer',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 40.0,
            //     fontWeight: FontWeight.w400,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
