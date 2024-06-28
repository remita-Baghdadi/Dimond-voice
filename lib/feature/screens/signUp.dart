import 'package:dimondvoice/feature/screens/login.dart';
import 'package:dimondvoice/widgets/authInfo.dart';
import 'package:flutter/material.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(padding: EdgeInsets.all(8)),
            const Padding(padding: EdgeInsets.all(10)),
            const Text("Sign up",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(18)),
                Text(
                  "create your new account",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  
                  child: authInfo(
                      "firstName", Icons.account_circle_rounded, firstNameController, false),
                ),
                Expanded(
                  child: authInfo(
                      "LastName", Icons.person, lastNameController, false),
                ),
              ],
            ),
            authInfo("email", Icons.email, emailController, false),
            const SizedBox(height: 20),
            authInfo("password", Icons.lock, passwordController, true),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.all(18)),
            CustomButton(
              onPressed: () {
                Future<void> signUpNewUser() async {
                  final AuthResponse res = await supabase.auth.signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    data: {
                      'first_name': firstNameController.text,
                      'last_name': lastNameController.text
                    },
                  );

                  print(res);
                }
              },
              child: Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              width: 350,
              height: 48,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 136, 88, 214),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
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
                            MaterialPageRoute(builder: (context) => Signin()));
                      },
                      child: const Text('Sign up',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 88, 214)))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
