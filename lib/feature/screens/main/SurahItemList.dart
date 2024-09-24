// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:dimondvoice/models/surahs.dart';
import 'package:dimondvoice/widgets/audioBooksWidgets/audio%20books%20element.dart';

import 'package:dimondvoice/widgets/templetes/scrollTemplete.dart';
import 'package:flutter/material.dart';

var jsonData;

class SurahItemLists extends StatelessWidget {
  final String pageName;
  final String pageDescrption;
  final int count;
  final List<Surahs> surah;

  const SurahItemLists(
      {Key? key,
      required this.pageDescrption,
      required this.count,
      required this.pageName,
      required this.surah})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    loadJsonAssets();
    return Scaffold(
        body: ListChaptersAndSurahs(
            context, pageName, pageDescrption, count, surah));
  }

  Column ListChaptersAndSurahs(BuildContext context, String pageName,
      String pageDescription, elmCount, List<Surahs> surah) {
    return Column(
      children: [
        scrollTemplete(context, pageName, pageDescription),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: elmCount,
              itemBuilder: (BuildContext context, int index) {
                return surahElement(
                    surah[index].surahName,
                    AudioPlayerScreen(
                      bookDetail: surahconvert(surah[index]),
                    ),
                    context,
                    surah[index].reciter);
              }),
        )
      ],
    );
  }
}

Book surahconvert(Surahs surah) {
  return Book(
      poster: surah.image_cover,
      bookCover: surah.image_cover,
      title: surah.surahName,
      author: surah.reciter,
      summary: "",
      audioUrl: surah.audioUrl,
      chapters: [
        Chapters(
            chapterId: 1,
            chapterName: surah.surahName,
            chapterUrl: surah.audioUrl
            )
      ]);
}
