import 'package:dimondvoice/api/FetchData.dart';
import 'package:dimondvoice/feature/screens/ItemList.dart';
import 'package:dimondvoice/feature/screens/splachscreen.dart';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://htyfbxzuvnuxpmrgnzcx.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh0eWZieHp1dm51eHBtcmduemN4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkxMTcyMjYsImV4cCI6MjAzNDY5MzIyNn0.WA7MrTTZr30_yYGAD_16vWQczeD-O2AQE_a7eDHZcwk',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemList(),
    );
  }
}
