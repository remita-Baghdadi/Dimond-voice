import 'package:dimondvoice/feature/screens/Home/HomePage.dart';
import 'package:dimondvoice/feature/screens/ItemList.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioBooksHome.dart';
import 'package:dimondvoice/feature/screens/main/SurahItemList.dart';
import 'package:dimondvoice/models/Voice_over.dart';
import 'package:dimondvoice/models/books.dart';
import 'package:dimondvoice/models/surahs.dart';
import 'package:flutter/material.dart';

List<String> homePageGridText = [
  "Voiceover\n&Podcasts",
  "Student\nVoice",
  "Languages",
  "Quran\n&\nAI-Recitaton"
];
//routs for home page screens

List<Widget> homePageGridRout = [
  ItemList(
      pageDescrption: "Financial audio books",
      count: 1,
      pageName: "Financial literacy",
      book: [getbook("bookFinance"), getbook("bookIslamic")]),
  ItemList(
      pageDescrption: "islamic audio books",
      count: 1,
      pageName: "Islamic literacy",
      book: [getbook("bookIslamic")]),
  ItemList(
      pageDescrption: "gothic and dark audio books",
      count: 1,
      pageName: "gothic fiction",
      book: [getbook("bookGothic")]),
  ItemList(
      pageDescrption: "historical audio books",
      count: 1,
      pageName: "historical none fiction",
      book: [getbook("bookHistorical")]),
  ItemList(
      pageDescrption: "personal development audio books",
      count: 1,
      pageName: "personal development space",
      book: [getbook("bookPersonalDevlopment")]),
  ItemList(
      pageDescrption: "Fantasy audio books",
      count: 1,
      pageName: "fantasy fiction",
      book: [getbook("bookFantasy")]),
];
List<String> homePageGridImage = [
  "assets/images/svg/interview-svgrepo-com.svg",
  "assets/images/svg/microphone-svgrepo-com.svg",
  "assets/images/svg/translate-svgrepo-com.svg",
  "assets/images/svg/islam-muslim-svgrepo-com.svg",
];

List<String> audioBookHomePageGridText = [
  "Financial literacy",
  "Islamic Literacy ",
  "gothic fiction",
  "Historical Non Fiction",
  "Personal Development",
  "Fantasy fiction"
];

List<String> audioBookHomePageGridImage = [
  "assets/images/first_image.png",
  "assets/images/second_image.png",
  "assets/images/third_image.png",
  "assets/images/fourth_image.png",
  "assets/images/fifth_image.png",
  "assets/images/sixth_image.jpg",
];
List<Widget> newHomePageGridRout = [
  ItemList(
      pageDescrption: "podcasts",
      count: 1,
      pageName: "podcasts",
      book: [getVoice("bld3iza")]),
  ItemList(
      pageDescrption: "general voice overs",
      count: 1,
      pageName: "voice overs",
      book: [getVoice("alwan")]),
  ItemList(
      pageDescrption: "learn languages",
      count: 1,
      pageName: " general languages",
      book: [
        getVoice("lang"),
      ]),
  SurahItemLists(
      pageDescrption: "Holy Quran",
      count: 6,
      pageName: "Quran",
      surah: [
        getSurah("surah1"),
        getSurah("surah2"),
        getSurah("surah3"),
        getSurah("surah4"),
        getSurah("surah5"),
        getSurah("surah6"),
      ]),
];
