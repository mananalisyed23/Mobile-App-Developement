import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        // leading: IconButton(
        //   onPressed: () {
        //     globalKey.currentState?.openEndDrawer();
        //   },
        //   color: Colors.white,
        //   icon: Icon(Icons.menu),
        // ),

      actions: [
        IconButton(onPressed: (){
          globalKey.currentState?.openEndDrawer();
        },
        color: Colors.white,
        icon: Icon(Icons.menu))
      ],
      ),
    body: Text('Navigation Drawer',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCnnMtJBo4OeHRSS21M6j8XIebhcOC_efVkANPdMhSBQ&s=10',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Syed Manan Ali',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                print('Clicked');
              },
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              onTap: () {
                print('Clicked');
              },
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              onTap: () {
                print('Clicked');
              },
              title: Text('About'),
              leading: Icon(Icons.info),
            ),
            ListTile(
              onTap: () {
                print('Clicked');
              },
              title: Text('Help?'),
              leading: Icon(Icons.help),
            ),
            ListTile(
              onTap: () {
                print('Clicked');
              },
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
