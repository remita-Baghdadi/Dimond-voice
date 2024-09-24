// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/feature/screens/main/NavBar.dart';
import 'package:dimondvoice/widgets/authInfo.dart';
import 'package:flutter/material.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../main.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => SigninState();
}

class SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(padding: EdgeInsets.all(8)),
            const Padding(padding: EdgeInsets.all(10)),
            const Text("Sign in",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            const Text("Hi ! Welcome back, you have been missed.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal)),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(18)),
                Text(
                  "Account information",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            authInfo("email", Icons.email, emailController, false),
            const SizedBox(height: 20),
            authInfo("password", Icons.lock, passwordController, true),
            const SizedBox(height: 40),
            CustomButton(
              onPressed: () {
                Future<void> signInWithEmail() async {
                  final AuthResponse res = await supabase.auth
                      .signInWithPassword(
                          email: emailController.text,
                          password: passwordController.text);
                  final Session? session = res.session;
                  final User? user = res.user;
                  print(res);
                }
              },
              width: 350,
              height: 48,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 136, 88, 214),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            SizedBox(height: 70),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: const TextSpan(
                    text: "Don't have an account yet ?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NavBar()));
                      },
                      child: const Text('Sign up',
                          style: TextStyle(color: purple))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
