import 'package:dimondvoice/constants/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Padding homeNav(
    String imagePath, String text, Widget rout, Color col, context) {
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
        decoration: BoxDecoration(
            color: col, borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 100,
        width: 100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 40),
              child: Text(
                text,
                style: TextStyle(
                    color: white,
                    fontSize: 12,
                    fontWeight: medium,
                    fontFamily: ub),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            SvgPicture.asset(
              imagePath,
              height: 70,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    ),
  );
}
