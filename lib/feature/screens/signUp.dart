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
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
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
          const Text("Welcome to the Dimond",
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
          Row(
            children: [
              customTextbox("firstName", Icons.person, firstNameController),
              customTextbox("LastName", Icons.person, lastNameController),
              const SizedBox(width: 20),
            ],
          ),
          customTextbox("email", Icons.person, emailController),
          const SizedBox(height: 20),
          customTextbox("password", Icons.lock, passwordController),
          SizedBox(height: 40),
          Row(
            children: [
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
                    color: Color.fromRGBO(56, 122, 245, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
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
