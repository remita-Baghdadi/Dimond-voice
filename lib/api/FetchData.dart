// import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
// import "package:dimondvoice/models/BookModel.dart";
// import "package:flutter/material.dart";
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// Future<List<Book>> getBook() async {
//   var url =
//       Uri.parse("https://librivox.org/api/feed/audiobooks/?id=52&format=json");
//   final response = await http.get(url);
//   final List body = json.decode(response.body);
//   return body.map((e) => Book.fromJson(e)).toList();
// }
//
// List<Book> b = [];
// Future<List<Book>> bookFuture = getBook();
//
// Future<void> converter() async {
//   Future<List<Book>> bookFuture = getBook();
//   b = await bookFuture;
// }
//
//
//
// Scaffold audioPlayerData() {
//   return Scaffold(
//   body: Center(
//     child: FutureBuilder<List<Book>>(
//       future: bookFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const CircularProgressIndicator();
//         } else if (snapshot.hasData) {
//           converter();
//           return AudioPlayerScreen(
//             bookDetail: b[b.length-1],
//           );
//         } else {
//           return const Text("No data available");
//         }
//       },
//     ),
//   ),
// );
// }
