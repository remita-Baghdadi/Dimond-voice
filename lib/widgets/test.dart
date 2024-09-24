import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
import 'package:dimondvoice/models/books.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

late var jsonData;

Future<void> loadJsonAsset() async {
  final String jsonString =
      await rootBundle.loadString('assets/json/audio_books.json');
  final data = jsonDecode(jsonString);
  jsonData = data;
}

class widgets extends StatefulWidget {
  const widgets({super.key});

  @override
  State<widgets> createState() => _widgetsState();
}

class _widgetsState extends State<widgets> {
  @override
  Widget build(BuildContext context) {
    if (jsonData == null) {
      return CircularProgressIndicator();
    } else {
      return AudioPlayerScreen(bookDetail: getbook("bookFantasy"));
    }
  }
}
