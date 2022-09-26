import 'package:drivers_app/tab_pages/earning_tab.dart';
import 'package:drivers_app/tab_pages/home_tab.dart';
import 'package:drivers_app/tab_pages/profile_tab.dart';
import 'package:drivers_app/tab_pages/rating_tabs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeTab(),
          EarningTab(),
          RatingTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.speed), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: "Gains"),
        BottomNavigationBarItem(icon: Icon(Icons.star),label:"Notes"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profil")
      ],
      unselectedItemColor: Colors.white38,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: GoogleFonts.mcLaren(fontSize:14),
      currentIndex: selectedIndex,
      onTap: onItemClicked,
      ),
    );
  }
}
