import 'package:dimondvoice/feature/screens/main/NavBar.dart';
import 'package:dimondvoice/feature/screens/splachscreen.dart';
import 'package:dimondvoice/models/books.dart';
import 'package:dimondvoice/models/surahs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

void main() async {
//  await Supabase.initialize(
//    url: 'https://htyfbxzuvnuxpmrgnzcx.supabase.co',
//    anonKey:
//        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh0eWZieHp1dm51eHBtcmduemN4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkxMTcyMjYsImV4cCI6MjAzNDY5MzIyNn0.WA7MrTTZr30_yYGAD_16vWQczeD-O2AQE_a7eDHZcwk',
//  );
  runApp(MyApp());
}

void initState() {
  loadJsonAsset();
  loadJsonAssets();
}

//final supabase = Supabase.instance.client;
// Future<void> loadJsonAsset() async {
//   final String jsonString =
//       await rootBundle.loadString('assets/json/audio_books.json');
//   final data = jsonDecode(jsonString);
//   jsonData = data;
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashScreen(),
    );
  }
}
