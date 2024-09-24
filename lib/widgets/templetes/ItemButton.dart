import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:flutter/material.dart';

Padding chapterItem(
    String image, String name, String author, Widget rout, context, Book book) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AudioPlayerScreen(bookDetail: book)),
        );
      },
      child: Container(
        height: 90,
        width: 350,
        decoration: BoxDecoration(
            color: buttonBackground,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          children: [
            Image.asset(image),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 18, fontFamily: ub, fontWeight: medium),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(author,
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: ub,
                          fontWeight: medium,
                          color: lightPurple)),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
