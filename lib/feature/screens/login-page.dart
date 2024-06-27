import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_quickstart/main.dart';
import 'package:supabase_quickstart/pages/account_page.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final session = supabase.auth.currentSession;
            if (session != null) {
              Navigator.of(context).pushReplacementNamed('/account');
            } else {
              final response = await supabase.auth.signIn(
                email: '
}