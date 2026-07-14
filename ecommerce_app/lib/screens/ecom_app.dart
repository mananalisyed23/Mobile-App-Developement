import 'package:ecommerce_app/widgets/item_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EcomApp extends StatefulWidget {
  const EcomApp({super.key});

  @override
  State<EcomApp> createState() => _EcomAppState();
}

class _EcomAppState extends State<EcomApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Padding(
          padding: const EdgeInsets.all(9),
          child: Image.asset(
            'assets/images/WhatsApp Image 2026-06-30 at 07.17.01.jpeg',
          ),
        ),
        title: Text(
          'ProShop',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Badge(
              label: Text('10'),
              child: Icon(CupertinoIcons.bell, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Badge(
              //  label: Text('2'),
              child: Icon(CupertinoIcons.profile_circled, size: 30),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Container(
          //   margin: EdgeInsets.all(15),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //search box
          Card(
            margin: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ),
          //banners
          SizedBox(
            height: 150,
            child: PageView(
              children: [
                ItemBanner(image: 'image_e1.jfif'),
                ItemBanner(image: 'images_e2.jfif'),
                ItemBanner(image: 'images_e3.jfif'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
