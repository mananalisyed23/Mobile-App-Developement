import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 253, 213),
      key: GlobalKey(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              globalKey.currentState?.openEndDrawer();
            },
            icon: Icon(Icons.person),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 147, 250, 158),
        title: Text(
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                hintText: 'Search conversations...',
                prefix: Icon(Icons.search_outlined),
              ),
            ),
          ),
          SizedBox(height: 10),
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
                        icon: Icon(Icons.add),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 4),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.teal),
                ),
              ),
              SizedBox(width: 4),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.teal),
                ),
              ),
              SizedBox(width: 4),
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
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person,
              size: 50,
              ),
              title: Text('Person 1'),
              subtitle: Text('This is new message'),
              trailing: Text('11:58 AM',
              textAlign: TextAlign.end,
              ),
            ),
            
          ),
          
        ],
      ),
    );
  }
}
