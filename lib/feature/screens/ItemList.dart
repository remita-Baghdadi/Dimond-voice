// // ignore_for_file: prefer_const_literals_to_create_immutables

// import 'package:dimondvoice/feature/screens/audiobooks/AudioPlayerScreen.dart';
// import 'package:dimondvoice/widgets/templetes/ItemButton.dart';
// import 'package:dimondvoice/widgets/templetes/scrollTemplete.dart';
// import 'package:flutter/material.dart';

// class ItemList extends StatelessWidget {
//   const ItemList({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//         body: ListChaptersAndSurahs(context, "nnnn", "mmmmm", q, q.length));
//   }

  
//   Column ListChaptersAndSurahs(BuildContext context, String pageName,
//       String pageDescription, elmCount) {
//     return Column(
//       children: [
//         scrollTemplete(context, pageName, pageDescription),
//         Expanded(
//           child: ListView.builder(
//               shrinkWrap: true,
//               itemCount: elmCount,
//               itemBuilder: (BuildContext context, int index) {
//                 return chapterItem("","","",AudioPlayerScreen(bookDetail: bookDetail),context);
//               }
//               ),

//         )

//       ],

//     );

//   }


// }
