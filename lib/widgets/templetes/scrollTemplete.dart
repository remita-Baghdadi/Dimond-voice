import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioBooksHome.dart';
import 'package:flutter/material.dart';

// Future<get> getRequest() async{
//   var url = Uri.https('librivox.org',"api/feed/audiobooks");

// }
Column scrollTemplete(BuildContext context, String title, String subject) {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
          SizedBox(
            width: 120,
          ),
          Text(
            title,
            style: TextStyle(fontFamily: ub, fontWeight: medium),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              subject,
              style: TextStyle(
                fontFamily: ub,
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
