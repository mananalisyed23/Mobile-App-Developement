import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    //Through App bar
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('ProChat', style: TextStyle(color: Colors.white)),
          actions: [
            
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Chat'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('This is chat screen')),
            Center(child: Text('This is status screen')),
            Center(child: Text('This is calls screen')),
          ],
        ),
        //Through body and flexible
        //   body: DefaultTabController(
        // length: 3,
        // child: Column(
        //   children: [
        //     TabBar(
        //       tabs: [
        //         Tab(text: 'Chats'),
        //         Tab(text: 'Status'),
        //         Tab(text: 'Calls'),
        //       ],
        //     ),
        //     Flexible(
        //       child: TabBarView(
        //         children: [
        //           Center(child: Text('This is chat screen')),
        //           Center(child: Text('This is status screen')),
        //           Center(child: Text('This is calls screen')),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        //),
      ),
    );
  }
}
