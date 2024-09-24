import 'package:dimondvoice/feature/screens/Home/HomePage.dart';
import 'package:dimondvoice/feature/screens/audiobooks/AudioBooksHome.dart';
import 'package:flutter/material.dart';

List<String> homePageGridText = [
  "Voiceover\n&Podcasts",
  "Student\nVoice",
  "Languages",
  "Quran\n&\nAI-Recitaton"
];
//routs for home page screens
List<Widget> homePageGridRout = [
  HomePage(),
  AudioBooksHome(),
  HomePage(),
  AudioBooksHome(),
  HomePage(),
  AudioBooksHome()
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
  
  "https://img.freepik.com/free-vector/flat-background-with-business-elements_1223-11.jpg?t=st=1719705625~exp=1719709225~hmac=e46d925aec89e944f10797557c9a1345e808334cd9eb501b832d303e82268781&w=826",
  
  "https://img.freepik.com/free-vector/flat-laylat-al-qadr-illustration_23-2148895823.jpg?t=st=1719705974~exp=1719709574~hmac=9db4c5b5bf7b8670f44a72636e327045d0385c3e94109abb7b126dbe344545fe&w=826",
  
  "https://img.freepik.com/free-photo/beautiful-mountains-landscape_23-2151151104.jpg?t=st=1719706183~exp=1719709783~hmac=43deed8b2b0a8cd43e0de8d1e50fecb7b0d62a6cfef80524c00f5abed069b566&w=1480",
  
  "https://img.freepik.com/free-photo/army-scene-from-ancient-baghdad-inspired-by-video-games_23-2151220598.jpg?t=st=1719706703~exp=1719710303~hmac=cef622878b7924de72ac448890a289a539be797cca5ebe7dd3df716a5ea64749&w=1800",
 
  "https://img.freepik.com/free-vector/business-icons-background_1212-469.jpg?t=st=1719706358~exp=1719709958~hmac=c41b6b4c1609dc4759b9a061f854302d15b346a1fcf696f6cbe12d0a409a3306&w=1380",

];
