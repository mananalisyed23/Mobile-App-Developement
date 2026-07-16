import 'package:ecommerce_app/widgets/item_banner.dart';
import 'package:ecommerce_app/widgets/item_category.dart';
import 'package:ecommerce_app/widgets/item_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EcomApp extends StatefulWidget {
  const EcomApp({super.key});

  @override
  State<EcomApp> createState() => _EcomAppState();
}

class _EcomAppState extends State<EcomApp> {
  List<String> banners = ['image_e1.jfif', 'images_e2.jfif', 'images_e3.jfif'];
  int curretIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Padding(
          padding: const EdgeInsets.all(9),
          child: Image.asset(
            'assets/images/WhatsApp Image 2026-07-15 at 02.04.48.jpeg',
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
              onPageChanged: (value) {
                setState(() {
                  curretIndex = value;
                });
              },
              children: [
                for (String banner in banners) ItemBanner(image: banner),
              ],
            ),
          ),
          // dots
          SizedBox(
            height: 30,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banners.length; i++)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    height: curretIndex == i ? 12 : 8,
                    width: curretIndex == i ? 12 : 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: curretIndex == i
                          ? Colors.grey
                          : Colors.grey.shade400,
                    ),
                  ),
              ],
            ),
          ),
          //categories
          ListTile(
            title: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text('Show All', style: TextStyle(color: Colors.indigo)),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(5),
              children: [
                ItemCategory(
                  title: 'Beauty',
                  image: 'skin-care.png',
                  color: Colors.orange,
                ),
                ItemCategory(
                  title: 'Baby',
                  image: 'care.png',
                  color: Colors.indigo,
                ),
                ItemCategory(
                  title: 'Health',
                  image: 'healthcare.png',
                  color: Colors.amber,
                ),
                ItemCategory(
                  title: 'Electronic',
                  image: 'responsive.png',
                  color: Colors.green,
                ),
                ItemCategory(
                  title: 'Kitchen',
                  image: 'food-and-restaurant.png',
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
          //products
          ListTile(
            title: Text(
              'Product',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text('Show All', style: TextStyle(color: Colors.indigo)),
          ),
          //gridview items
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.7, // ADD THIS LINE
            mainAxisSpacing: 10, // ADD THIS LINE
            crossAxisSpacing: 10, // ADD THIS LINE
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              ItemProduct(
                title: 'Best Beauty product for womens and girls are available',
                image: 'images_e5.jfif',
                price: '299',
              ),
              ItemProduct(
                title: 'Best rashan products for house hold are available here',
                image: 'image_e4.jfif',
                price: '500',
              ),
              ItemProduct(
                title: 'Best Beauty product for womens and girls are available',
                image: 'images_e2.jfif',
                price: '199',
              ),
              ItemProduct(
                title:
                    'Best skin care products for every tyoe of body are available here',
                image: 'image_e1.jfif',
                price: '399',
              ),
              ItemProduct(
                title: 'Best Beauty product for womens and girls are available',
                image: 'images_e5.jfif',
                price: '299',
              ),
              ItemProduct(
                title: 'Best rashan products for house hold are available here',
                image: 'image_e4.jfif',
                price: '500',
              ),
              ItemProduct(
                title: 'Best Beauty product for womens and girls are available',
                image: 'images_e2.jfif',
                price: '199',
              ),
              ItemProduct(
                title:
                    'Best skin care products for every tyoe of body are available here',
                image: 'image_e1.jfif',
                price: '399',
              ),
              // MORE ITEMS...
            ],
          ),
        ],
      ),
    );
  }
}
