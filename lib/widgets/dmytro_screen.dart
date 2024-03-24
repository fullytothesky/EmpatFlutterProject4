import 'package:flutter/material.dart';

class ScreenDmytroWidget extends StatelessWidget {
  const ScreenDmytroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dmytro's Screen"),
      ),
      body: Expanded(
        flex: 3,
        child: Column(
          children: [
            Hero(
              tag: "Dmytro",
              child: Image.asset(
                "assets/Dmytro.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: const Text(
                "Our Flutter Mentor Dmytro :)",
                style: TextStyle(fontSize: 19),
              ),
            )
          ],
        ),
      ),
    );
  }
}
