import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'App Bar'
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5),
          child: GNav(
            gap: 8,
            iconSize: 24,
            curve: Curves.bounceIn,
            //onTabChange: , para navegar entre as paginas
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding:const EdgeInsets.all(16),
            tabs: const [
              GButton(
                  icon:
                  Icons.home,
                  text:'Home',
              ),
              GButton(
                  icon:
                  Icons.search,
                  text: 'Search',
              ),
              GButton(
                  icon:
                  Icons.favorite_border,
                  text: 'Favorite',
              ),
              GButton(
                  icon:
                  Icons.settings,
                  text: 'Settings',
              ),
          ],
          ),
        ),
      ),
    );
  }
}
//https://pub.dev/packages/google_nav_bar


/*GNav(
  rippleColor: Colors.grey[800], // tab button ripple color when pressed
  hoverColor: Colors.grey[700], // tab button hover color
  haptic: true, // haptic feedback
  tabBorderRadius: 15,
  tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
  curve: Curves.easeOutExpo, // tab animation curves
  duration: Duration(milliseconds: 900), // tab animation duration
  gap: 8, // the tab button gap between icon and text
  color: Colors.grey[800], // unselected icon color
  activeColor: Colors.purple, // selected icon and text color
  iconSize: 24, // tab button icon size
  tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
  tabs: [
    GButton(
      icon: LineIcons.home,
      text: 'Home',
    ),
    GButton(
      icon: LineIcons.heart_o,
      text: 'Likes',
    ),
    GButton(
      icon: LineIcons.search,
      text: 'Search',
    ),
    GButton(
      icon: LineIcons.user,
      text: 'Profile',
    )
  ]
 */