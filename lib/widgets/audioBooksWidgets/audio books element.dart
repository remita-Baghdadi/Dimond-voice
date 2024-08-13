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

Padding surahElement(String text, Widget rout, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => rout),
        );
      },
      child: Expanded(
        child: Container(

          decoration: BoxDecoration(

              color: Color.fromRGBO(218, 247, 236, 0.97),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          height: 70,
          width: 180,
          child: Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset("assests/images/imam.png",
                            fit: BoxFit.fill)),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max ,

                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            color: black,
                            fontSize: 12,
                            fontWeight: medium,
                            fontFamily: ub),
                      ),
                      Row(
                        children: [
                          Text("reciter: "
                          , style: TextStyle(fontWeight: bold,),
                          ),
                          Text("nameR")
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
