import 'package:flutter/material.dart';
import 'package:tamin/bace/bottom_nev_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      /* theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
       
        useMaterial3: true,
      ),
      */

      home: BottomNavBar()
    );
  }
}
