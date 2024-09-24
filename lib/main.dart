// import 'package:dimondvoice/api/FetchData.dart';
// import 'package:dimondvoice/feature/screens/ItemList.dart';
// import 'package:dimondvoice/feature/screens/splachscreen.dart';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

void main() async {
  await Supabase.initialize(
    url: 'https://htyfbxzuvnuxpmrgnzcx.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh0eWZieHp1dm51eHBtcmduemN4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkxMTcyMjYsImV4cCI6MjAzNDY5MzIyNn0.WA7MrTTZr30_yYGAD_16vWQczeD-O2AQE_a7eDHZcwk',
  );
  runApp(MyApp());
}

var jsonData;
void initState() {
  // TODO: implement initState

  loadJsonAsset();
}

final supabase = Supabase.instance.client;
Future<void> loadJsonAsset() async {
  final String jsonString =
      await rootBundle.loadString('assets/json/audio_books.json');
  final data = jsonDecode(jsonString);
  jsonData = data;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Chapters> abs = [];
    var a = jsonData["bookFantasy"]["chapters"];
    final chapter_urls = a.map((info) => info['chapterUrl']).toList();
    final chapter_names = a.map((info) => info['chapterName']).toList();
    final chapter_ids = a.map((info) => info['chapterId']).toList();
    for (var i = 0; i < chapter_urls.length; i++) {
      abs.add(Chapters(
          chapterId: chapter_ids[i],
          chapterName: chapter_names[i],
          chapterUrl: chapter_urls[i]));
    }

    Book b = new Book(
        chapters: abs,
        audioUrl: jsonData["bookFantasy"]["audio_url"],
        poster: jsonData["bookFantasy"]["image_cover"],
        title: jsonData["bookFantasy"]["name"],
        author: jsonData["bookFantasy"]["author"],
        bookCover: jsonData["bookFantasy"]["image_cover"],
        summary: "dadadadad");
    return MaterialApp(
      home: AudioPlayerScreen(
        bookDetail: b,
      ),
    );
  }
}
