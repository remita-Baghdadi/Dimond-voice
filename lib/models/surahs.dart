import 'dart:convert';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:flutter/services.dart' show rootBundle;

var jsonData;

Future<void> loadJsonAssets() async {
  final String jsonString =
      await rootBundle.loadString('assets/json/surahs.json');
  final data = jsonDecode(jsonString);
  jsonData = data;
}

List<Chapters> chapterListConverter(String bookie) {
  loadJsonAssets();

  List<Chapters> chapterlist = [];
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

class Surahs {
  final String surahName;
  final List<Chapters> cp;
  final String reciter;
  final String audioUrl;
  final String image_cover;

  Surahs(
      {required this.image_cover,
      required this.reciter,
      required this.cp,
      required this.audioUrl,
      required this.surahName});
}

Surahs getSurah(String surah) {
  loadJsonAssets();
  List<Chapters> chaplist = chapterListConverter(surah);
  return new Surahs(
    cp: chaplist,
    image_cover: jsonData[surah]["image_cover"],
    audioUrl: jsonData[surah]["audio_url"],
    surahName: jsonData[surah]["name"],
    reciter: jsonData[surah]["reciter"],
  );
}
