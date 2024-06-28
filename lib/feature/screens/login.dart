import 'package:flutter/material.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../main.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.all(8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(80)),
              Image.asset("assests/white_logo.png", height: 100, width: 100)
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          const Text("Welcome to the Diamond",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold)),
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
          customTextbox("email", Icons.person, emailController),
          const SizedBox(height: 20),
          customTextbox("password", Icons.lock, passwordController),
          const SizedBox(height: 40),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(18)),
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
                    color: Color.fromRGBO(56, 122, 245, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Text("Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding customTextbox(
      String hintText, IconData icon, TextEditingController textController) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 32, right: 29),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color.fromRGBO(168, 168, 169, 1), width: 1.0),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(icon),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(103, 103, 103, 1),
          ),
        ),
      ),
    );
  }
}
