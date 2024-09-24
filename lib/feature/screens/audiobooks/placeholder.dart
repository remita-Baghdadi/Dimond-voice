import 'package:dimondvoice/feature/screens/Home/HomePage.dart';
import 'package:dimondvoice/feature/screens/main/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlaceHolder extends StatelessWidget {
  const PlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => NavBar())),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Text("page will be available on the full version ")),
                Icon(Icons.arrow_back_ios_new)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
