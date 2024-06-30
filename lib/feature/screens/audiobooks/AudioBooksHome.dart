import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/models/gridLists.dart';
import 'package:dimondvoice/widgets/audioBooksWidgets/audio%20books%20element.dart';
import 'package:flutter/material.dart';

class AudioBooksHome extends StatelessWidget {
  const AudioBooksHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Text(
                "audio books",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: ub,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          Expanded(child: LayoutBuilder(
            builder: (context, constraints) {
              return GridView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: audioBooksElement(
                        audioBookHomePageGridImage[index],
                        audioBookHomePageGridText[index],
                        homePageGridRout[index],context)),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1),
              );
            },
          )),
        ],
      )),
    );
  }
}
