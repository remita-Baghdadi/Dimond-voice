// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioBooksHome.dart';
import 'package:dimondvoice/models/gridLists.dart';
import 'package:dimondvoice/widgets/homeNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 20),
                      child: Text(
                        "Browse",
                        style: TextStyle(
                            fontSize: 42, fontWeight: bold, fontFamily: ub),
                      ),
                    ),
                    Spacer()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AudioBooksHome()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: purple,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 110,
                      width: 360,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 40),
                            child: Text(
                              "audio Books",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: medium,
                                  fontFamily: ub),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                              height: 80,
                              "assests/images/svg/audiobook-svgrepo-com (1).svg"),
                          SizedBox(
                            width: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Browse all \nbranches",
                        style: TextStyle(
                            fontFamily: ub,
                            fontSize: 21,
                            fontWeight: bold,
                            letterSpacing: 0),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ],
            ),
            Expanded(child: LayoutBuilder(
              builder: (context, constraints) {
                return GridView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: homeNav(
                        homePageGridImage[index],
                        homePageGridText[index],
                        homePageGridRout[index],
                        girdColor[index],context),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.35),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
