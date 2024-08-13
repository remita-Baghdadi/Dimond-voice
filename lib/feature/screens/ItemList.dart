// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:dimondvoice/feature/screens/Home/HomePage.dart';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:dimondvoice/widgets/audioBooksWidgets/audio%20books%20element.dart';
import 'package:dimondvoice/widgets/templetes/scrollTemplete.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Padding> q = [];
    return Scaffold(
        body: ListChaptersAndSurahs(context, "nnnn", "mmmmm", q, q.length));
  }

  
  Column ListChaptersAndSurahs(BuildContext context, String pageName,
      String pageDescription, List<Padding> surahOrChapterList, elmCount) {
    return Column(
      children: [
        scrollTemplete(context, pageName, pageDescription),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: elmCount,
              itemBuilder: (BuildContext context, int index) {
                return surahOrChapterList[index];
              }
              ),

        )

      ],

    );

  }


}
