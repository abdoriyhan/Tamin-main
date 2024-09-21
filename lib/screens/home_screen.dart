import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const  Column(
              children: [
                Text("data"),
                Text("data2"),
              ],
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.red,
            )
          ],
        ),
      ],
    ));
  }
}
