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
          IconButton(onPressed: () {
          globalKey.currentState?.openEndDrawer();},
          icon: Icon(Icons.person)),
          
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
          SizedBox(height: 4,),
         Stack(
          children: [
            Positioned(
              left: 24,
              top: 8,
              child: IconButton(
              onPressed: (){},
              iconSize: 34,
              icon: Icon(Icons.search)),
            ),
            Positioned
            (left: 78,
             top: 16,
            child: Text('Search conversations',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),
            )),
             Container(
            padding: EdgeInsets.all(5),
            height: 64,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: const Color.fromARGB(255, 226, 226, 226)),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
          )
          ],
         ),
         SizedBox(height: 6,),
         Flex(direction: Axis.horizontal,
         children: [
          Flexible(
            child: Stack(
              children:[Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.teal,
                  )
                ),
              ),
              Positioned(
                top: 56,
                left: 56,
                child: IconButton(onPressed: (){
                },
                iconSize: 20,
                icon: Icon(Icons.add),
                 style: IconButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                ),
              ),
              ]
            ),
          ),
          SizedBox(width: 4,),
           Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.teal,
                )
              ),
            ),
            SizedBox(width: 4,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.teal,
                )
              ),
            ),
            SizedBox(width: 4,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.teal,
                )
              ),
            ),
            
         ],
         
         )
        ],
      ),
    );
  }
}
