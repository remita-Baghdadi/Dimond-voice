import 'dart:convert';
import 'package:dimondvoice/models/BookModel.dart';

import 'package:flutter/services.dart' show rootBundle;

bool isLoading = false;

var jsonDataVoice;
Future<void> loadJsonAssetVoice() async {
  final String jsonString =
      await rootBundle.loadString('json/voice_over.json');
  final data = jsonDecode(jsonString);
  jsonDataVoice = data;
}

List<Chapters> chapterListConverter(String voice) {
  List<Chapters> chapterlist = [];
  loadJsonAssetVoice();
  var a = jsonDataVoice[voice]["chapters"];
  final chapter_urls = a.map((info) => info['chapterUrl']).toList();
  final chapter_names = a.map((info) => info['chapterName']).toList();
  final chapter_ids = a.map((info) => info['chapterId']).toList();
  for (var i = 0; i < chapter_urls.length; i++) {
    chapterlist.add(Chapters(
        chapterId: int.parse(chapter_ids[i]),
        chapterName: chapter_names[i],
        chapterUrl: chapter_urls[i]));
  }

  return chapterlist;
}

Book getVoice(String voice) {
  loadJsonAssetVoice();
  List<Chapters> chaplist = chapterListConverter(voice);
  return new Book(
      chapters: chaplist,
      audioUrl: jsonDataVoice[voice]["audio_url"],
      poster: jsonDataVoice[voice]["image_cover"],
      title: jsonDataVoice[voice]["name"],
      author: jsonDataVoice[voice]["author"],
      bookCover: jsonDataVoice[voice]["image_cover"],
      summary: "");
}

// late Book bookfan = getbook("bookFantasy");
// late Book bookgoth = getbook("bookGothic");
// late Book bookfinance = getbook("bookFinance");
// late Book bookislam = getbook("bookIslamic");
// late Book bookself = getbook("bookPersonalDevlopment");
// late Book bookhistorical = getbook("bookFantasy");