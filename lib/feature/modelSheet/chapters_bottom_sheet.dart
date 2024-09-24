import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/models/BookModel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChaptersBottomSheet extends StatelessWidget {
  int val = -1;

  ChaptersBottomSheet({super.key});

  buildBottomsheet(BuildContext context, List<Chapters> chapters) {
    return showModalBottomSheet(
      backgroundColor: const Color(0xFF0E0E29),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            //Spartan
            return SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chapters',
                          style: TextStyle(
                            color: Color(0xFFF5F5FA),
                            fontSize: 16,
                            fontFamily: ub,
                            fontWeight: medium,
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xFFF5F5FA),
                          ),
                          padding: const EdgeInsets.all(0),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFFBBB1FA),
                    thickness: 0.5,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child:
                        NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (overScroll) {
                        overScroll.disallowIndicator();
                        return true;
                      },
                      child: ListView(
                        children: [
                          ...List.generate(
                              chapters.length,
                              (index) =>
                                  chapterItem(context, chapters[index], index))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget chapterItem(BuildContext context, Chapters item, int index) {
    return GestureDetector(
      onTap: () => Navigator.pop(context, index),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 25),
        child: Text(
          item.chapterName,
          style: const TextStyle(
            color: Color(0xFFF5F5FA),
            fontSize: 16,
            fontFamily: ub,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
