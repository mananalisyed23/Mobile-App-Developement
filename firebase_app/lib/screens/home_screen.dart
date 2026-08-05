import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/screens/add_user.dart';
import 'package:firebase_app/screens/update_screen.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dbRef = FirebaseFirestore.instance.collection('users');
  // ----------------------> using map <------------------------------
  //  // List<Map<String, dynamic>> users = [];
  // void fetchData() async {
  //   dbRef.snapshots().listen((data) {
  //     users.clear();
  //     setState(() {
  //       for (var doc in data.docs) {
  //         users.add(doc.data());
  //       }
  //     });
  //   });
  // }

  // @override
  // void initState() {
  //   fetchData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),

      //-----------> Using future builder <-----------------
      // FutureBuilder(
      //   future: dbRef.get(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //     if (snapshot.data != null) {
      //       List<Map<String, dynamic>> users = [];
      //       for (var doc in snapshot.data!.docs) {
      //         users.add(doc.data());
      //         return ListView(
      //           children: [
      //             for (var user in users)
      //               ListTile(
      //                 onTap: () {
      //                   Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => UpdateScreen(user: user),
      //                     ),
      //                   );
      //                 },
      //                 title: Text(user['name']),
      //                 subtitle: Text(user['email']),
      //                 trailing: IconButton(
      //                   onPressed: () async {
      //                     await dbRef.doc(user['id']).delete();
      //                   },
      //                   icon: Icon(Icons.delete),
      //                 ),
      //               ),
      //           ],
      //         );
      //       }
      //     }
      //     return SizedBox();
      //   },
      // ),
      body:
          //-------------> using stream builder <-------------------
          StreamBuilder(
            stream: dbRef.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.data != null) {
                List<Map<String, dynamic>> users = [];
                for (var doc in snapshot.data!.docs) {
                  users.add(doc.data());
                }
                return ListView(
                  children: [
                    for (var user in users)
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateScreen(user: user),
                            ),
                          );
                        },
                        title: Text(user['name']),
                        subtitle: Text(user['email']),
                        trailing: IconButton(
                          onPressed: () async {
                            await dbRef.doc(user['id']).delete();
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ),
                  ],
                );
              }
              return SizedBox();
            },
          ),
      //------------------------> Using future builder <------------------------
      // FutureBuilder(
      //   future: dbRef.get(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //     if (snapshot.data != null) {
      //       List<Map<String, dynamic>> users = [];
      //       for (var doc in snapshot.data!.docs) {
      //         users.add(doc.data());
      //         return ListView(
      //           children: [
      //             for (var user in users)
      //               ListTile(
      //                 onTap: () {
      //                   Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => UpdateScreen(user: user),
      //                     ),
      //                   );
      //                 },
      //                 title: Text(user['name']),
      //                 subtitle: Text(user['email']),
      //                 trailing: IconButton(
      //                   onPressed: () async {
      //                     await dbRef.doc(user['id']).delete();
      //                   },
      //                   icon: Icon(Icons.delete),
      //                 ),
      //               ),
      //           ],
      //         );
      //       }
      //     }
      //     return SizedBox();
      //   },
      // ),
      //------------> Using simple method <--------------------
      //ListView(
      //   children: [
      //     for (var user in users)
      //       ListTile(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => UpdateScreen(user: user),
      //             ),
      //           );
      //         },
      //         title: Text(user['name']),
      //         subtitle: Text(user['email']),
      //         trailing: IconButton(
      //           onPressed: () async {
      //             await dbRef.doc(user['id']).delete();
      //             fetchData();
      //           },
      //           icon: Icon(Icons.delete),
      //         ),
      //       ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddUser()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
