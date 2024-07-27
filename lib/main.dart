import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/ahadeth/ahadeth_details.dart';
import 'package:islami/ui/screens/home/home.dart';
import 'package:islami/ui/screens/splash/splash.dart';
import 'package:islami/ui/screens/sura_details/sura_details.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        Splash.routeName:(_) => const Splash(),
        Home.routeName : (_) =>const Home(),
        SuraDetails.routeName : (_) =>  SuraDetails(),
        HadethDetails.routeName :(_)=> HadethDetails()
      },
      initialRoute: Splash.routeName,
    );
  }
}

