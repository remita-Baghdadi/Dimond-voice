import 'package:dimondvoice/constants/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Padding authInfo(String hintText, IconData icon,
    TextEditingController textController, bool type) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
    child: Column(
      children: [
        Row(
          children: [Text(hintText), Spacer()],
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: type,
          controller: textController,
          decoration: InputDecoration(
            // constraints: BoxConstraints.tight(Size.fromWidth(1)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromRGBO(168, 168, 169, 1), width: 1.0),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(icon),
            fillColor: Colors.white,
            filled: true,
            hintStyle: const TextStyle(
              fontFamily: ub,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(103, 103, 103, 1),
            ),
          ),
        ),
      ],
    ),
  );
}

Container a() {
  return Container(
    height: 100,
    width: 100,
    color: purple,
  );
}
