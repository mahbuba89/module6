import 'package:flutter/material.dart';
import 'package:untitled1/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Module 6',
        home: PhotoGalleryScreen(),
      );
}
