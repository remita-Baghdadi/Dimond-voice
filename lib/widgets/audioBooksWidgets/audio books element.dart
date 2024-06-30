import 'package:dimondvoice/constants/constansts.dart';

import 'package:flutter/material.dart';

Padding audioBooksElement(String imagePath, String text, Widget rout, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => rout),
        );
      },
      child: Container(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Container(
                height: 148,
                width: 148,
                child: Image.network(imagePath, fit: BoxFit.fill)),
            Spacer(),
            Text(
              text,
              style: TextStyle(
                  color: black,
                  fontSize: 12,
                  fontWeight: medium,
                  fontFamily: ub),
            ),
          ],
        ),
      ),
    ),
  );
}
