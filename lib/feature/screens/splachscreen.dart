// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/feature/screens/login.dart';
import 'package:dimondvoice/main.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
    _redirect();
    // Timer(Duration(milliseconds: 3000), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>))
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    final session = supabase.auth.currentSession;

    if (!mounted) return;

    if (session != null) {
      Navigator.of(context).pushReplacementNamed('/account');
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Signin()));
    }
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Signin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: Column(
        children: [
          SizedBox(height: 200),
          ClipRRect(
            child: Image(
              image: AssetImage("assests/white_logo.png"),
              width: 360,
              height: 360,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "diamond voice",
                      textStyle: TextStyle(
                          fontSize: 0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      speed: Duration(milliseconds: 100),
                    )
                  ],
                  totalRepeatCount: 1,
                ),
              ))
        ],
      ),
    );
  }
}
