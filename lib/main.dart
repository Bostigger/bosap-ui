import 'package:flutter/material.dart';
import 'package:master_responsiveness/widgets/colors.dart';
import 'package:master_responsiveness/responsiveness/responsive_layout.dart';
import 'package:master_responsiveness/screens/layouts/mobile_screen.dart';
import 'package:master_responsiveness/screens/layouts/web_screen.dart';
import 'package:master_responsiveness/screens/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),)
    );
  }
}
