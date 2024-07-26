import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/ui/screens/home/tabs/quran/quran.dart';
import 'package:islami/ui/screens/home/tabs/radio/radio.dart';
import 'package:islami/ui/screens/home/tabs/sebha/sebha.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_styles.dart';

import '../../utils/app_assets.dart';
class Home extends StatefulWidget {
  static const String routeName = 'home';
  const Home ({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTapIndex =0;
  List<Widget> tabs = [Quran(),Ahadeth(),MyRadio(),Sebha()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.background))
      ),
      child: Scaffold(
        appBar: buildAppBar(),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: buildBottomNavigation(),
        body: tabs[selectedTapIndex],
      ),

    );
  }

  Theme buildBottomNavigation() {
    return Theme(
        data: ThemeData(canvasColor: AppColors.primary),
        child: BottomNavigationBar(
          currentIndex: selectedTapIndex,
          onTap: (index){

            selectedTapIndex=index;
            setState(() {

            });
          },
          selectedIconTheme: IconThemeData(size: 36),
          selectedItemColor: AppColors.accent,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icQuran)),label: "Quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icAhdath)),label: "Ahadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icRadio)),label: "Radio"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icSebha)),label: "Sebha")
          ],
        ),
      );
  }

}


AppBar buildAppBar() =>  AppBar(
  title: Text("Islami",style: AppStyle.appBarTextStyle,),
  centerTitle: true,
  backgroundColor: AppColors.transparent,
  elevation: 0,

);

