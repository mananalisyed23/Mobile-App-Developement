import 'package:e_comm_app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome', style: AppWidget.blackTextStyle(24)),
            Text('Syed Manan Ali', style: AppWidget.blackTextStyle(22)),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Grocery',
                        hintStyle: AppWidget.blackTextStyle(16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 128, 178, 117),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.search),
                ),
              ],
            ),
            SizedBox(height: 10),
            Image.asset("assets/images/banner1.png"),
            SizedBox(height: 10),
            Text('Categories', style: AppWidget.blackTextStyle(24)),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 128, 178, 117),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Image.asset(
                          "assets/svgs/fruit.png",
                          height: 35,
                          width: 35,
                          color: Colors.white,
                          fit: BoxFit.cover,
                        ),
                        Text("Fruits", style: AppWidget.whiteTextStyle(18)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 128, 178, 117),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Image.asset(
                          "assets/svgs/fruit.png",
                          height: 35,
                          width: 35,
                          color: Colors.white,
                          fit: BoxFit.cover,
                        ),
                        Text("Fruits", style: AppWidget.whiteTextStyle(18)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
