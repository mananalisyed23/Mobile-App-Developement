import 'package:flutter/material.dart';
import 'package:supabase_app/screens/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://ccchzyonfqowgtydtamo.supabase.co',
    // ignore: deprecated_member_use
    anonKey: 'sb_publishable_7NimN2dd-zdWqTodBTPVlg_Fx8gze_0',
  );
  runApp(SupabaseApp());
}

class SupabaseApp extends StatelessWidget {
  const SupabaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
