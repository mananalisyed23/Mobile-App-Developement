import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/screens/home_provider.dart';
import 'package:provider_app/screens/home_screen.dart';

void main(){
  runApp(ProviderApp());
}
class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(create: (context)=>HomeProvider(),
      child: HomeScreen(),
      ),
    );
  }
}