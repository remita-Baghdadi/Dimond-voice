// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:dimondvoice/widgets/templetes/ItemButton.dart';
import 'package:dimondvoice/widgets/templetes/scrollTemplete.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String pageName;
  final String pageDescrption;
  final int count;
  final List<Book> book;

  const ItemList(
      {Key? key,
      required this.pageDescrption,
      required this.count,
      required this.pageName,
      required this.book})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListChaptersAndSurahs(
            context, pageName, pageDescrption, count, book));
  }

  Column ListChaptersAndSurahs(BuildContext context, String pageName,
      String pageDescription, elmCount, List<Book> book) {
    return Column(
      children: [
        scrollTemplete(context, pageName, pageDescription),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: elmCount,
              itemBuilder: (BuildContext context, int index) {
                return chapterItem(
                    book[index].bookCover,
                    book[index].title,
                    book[index].author,
                    AudioPlayerScreen(
                      bookDetail: book[index],
                    ),
                    context,
                    book[index]);
              }),
        )
      ],
    );
  }
}
