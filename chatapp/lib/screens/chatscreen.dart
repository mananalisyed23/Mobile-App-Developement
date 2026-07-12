import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  // Track the currently active bottom navigation tab
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: const Color.fromARGB(255, 194, 253, 213),

      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(height: 50),
            CircleAvatar(backgroundImage: NetworkImage('url',),
            radius: 50,
            ),
            SizedBox(height: 20,),
            ListTile(
              onTap: () {},
              title: Text('Account'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              onTap: () {},
              title: Text('Privacy'),
              leading: Icon(Icons.privacy_tip),
            ),
            ListTile(
              onTap: () {},
              title: Text('Appearance'),
              leading: Icon(Icons.color_lens),
            ),
            ListTile(
              onTap: () {},
              title: Text('Notification Settings'),
              leading: Icon(Icons.notifications),
            ),
            ListTile(
              onTap: () {},
              title: Text('Help And Feedback'),
              leading: Icon(Icons.feedback),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add, size: 50, color: Colors.white),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(
            onPressed: () {
              globalKey.currentState?.openEndDrawer();
            },
            icon: const Icon(Icons.person),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 147, 250, 158),
        title: const Text(
          'ProConnect',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body: ListView(
        children: [
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                hintText: 'Search conversations...',
                prefixIcon: const Icon(Icons.search_outlined),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.teal),
                      ),
                    ),
                    Positioned(
                      top: 56,
                      left: 56,
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 20,
                        icon: const Icon(Icons.add),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 4),

              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.teal),
                ),
              ),

              const SizedBox(width: 4),

              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.teal),
                ),
              ),

              const SizedBox(width: 4),

              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.teal),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          for (int i = 1; i <= 11; i++)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.person, size: 50),
                title: Text('Person'),
                subtitle: Text('This is new message'),
                trailing: Text('11:58 AM', textAlign: TextAlign.end),
              ),
            ),
        ],
      ),

      // Added Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, // Essential for 4+ items to prevent shifting layout
        backgroundColor: const Color.fromARGB(
          255,
          147,
          250,
          158,
        ), // Matches your AppBar tint
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            activeIcon: Icon(Icons.people),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            activeIcon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
        ],
      ),
    );
  }
}
