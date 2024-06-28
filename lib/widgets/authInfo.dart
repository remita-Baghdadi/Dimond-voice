import 'package:flutter/material.dart';

Padding authInfo(String hintText, IconData icon,
    TextEditingController textController, bool type) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 32, right: 29),
    child: Column(
      children: [
        Row(
          children: [Text(hintText), Spacer()],
        ),
        SizedBox(),
        TextField(
          obscureText: type,
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
            hintStyle: const TextStyle(
              fontFamily: 'Montserrat',
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
