import 'dart:convert';
import 'package:dimondvoice/models/BookModel.dart';

import 'package:flutter/services.dart' show rootBundle;

bool isLoading = false;

var jsonData;
Future<void> loadJsonAsset() async {
  final String jsonString =
      await rootBundle.loadString('assets/json/audio_books.json');
  final data = jsonDecode(jsonString);
  jsonData = data;
}

List<Chapters> chapterListConverter(String bookie) {
  List<Chapters> chapterlist = [];
  loadJsonAsset();
  var a = jsonData[bookie]["chapters"];
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

Book getbook(String book) {
  List<Chapters> chaplist = chapterListConverter(book);
  loadJsonAsset();

  return new Book(
      chapters: chaplist,
      audioUrl: jsonData[book]["audio_url"],
      poster: jsonData[book]["image_cover"],
      title: jsonData[book]["name"],
      author: jsonData[book]["author"],
      bookCover: jsonData[book]["image_cover"],
      summary: "");
}

// late Book bookfan = getbook("bookFantasy");
// late Book bookgoth = getbook("bookGothic");
// late Book bookfinance = getbook("bookFinance");
// late Book bookislam = getbook("bookIslamic");
// late Book bookself = getbook("bookPersonalDevlopment");
// late Book bookhistorical = getbook("bookFantasy");