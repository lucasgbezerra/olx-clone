import 'package:flutter/material.dart';
import 'package:olx_clone/screens/register_announcement_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLX clone',  
      home: RegisterAnnouncementPage(),
    );
  }
}
