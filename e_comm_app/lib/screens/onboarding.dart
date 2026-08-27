import 'package:e_comm_app/screens/home.dart';
import 'package:e_comm_app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),
          Image.asset('assets/images/onboard.png'),
          Text(
            'Fresh & Tasty \n      Grocery Foods',
            textAlign: TextAlign.center,
            style: AppWidget.headlineTextStyle(26),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Text(
              'Contrary to popular belief, Lorem Ipsum is not simply random text.',
              textAlign: TextAlign.center,
              style: TextStyle(color: const Color.fromARGB(110, 0, 0, 0),
              fontWeight: FontWeight.w500
              ),
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 128, 178, 117),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
