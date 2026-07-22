import 'package:advaced_navigation/screens/home_screen.dart';
import 'package:advaced_navigation/screens/profile.dart';
import 'package:advaced_navigation/screens/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List<Widget> Widgets = [HomeScreen(), ProfileScreen(), SettingsScreen()];
  int currentIndex = 0;
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
      title: Text( currentIndex==0? 'Home' :currentIndex==1? 'Profile' : 'Settings')
      ),
      body: Widgets[currentIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 50),
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            ListTile(
              selected: currentIndex==0,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 0;
                });
              },
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              selected: currentIndex==1,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 1;
                });
              },
              title: Text('Profile'),
              leading: Icon(CupertinoIcons.profile_circled),
            ),
            ListTile(
              selected: currentIndex==2,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 2;
                });
              },
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
