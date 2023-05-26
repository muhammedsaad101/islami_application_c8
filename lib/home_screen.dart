import 'package:flutter/material.dart';
import 'package:flutter_applications_c8/tabs/hadeth_tab.dart';
import 'package:flutter_applications_c8/tabs/quran_tab.dart';
import 'package:flutter_applications_c8/tabs/radio_tab.dart';
import 'package:flutter_applications_c8/tabs/settings_tab.dart';
import 'package:flutter_applications_c8/tabs/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami', style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: 'Tasbeh'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];
}
