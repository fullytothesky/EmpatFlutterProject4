import 'package:flutter/material.dart';

class ScreenMykolaWidget extends StatelessWidget {
  const ScreenMykolaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mykola's Screen"),
      ),
      body: Expanded(
        flex: 3,
        child: Column(
          children: [
            Hero(
              tag: "Mykola",
              child: Image.asset(
                "assets/Mykola.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: const Text(
                "Our Front End mentor Mykola who will help us with creating our designs into reality:)",
                style: TextStyle(fontSize: 19),
              ),
            )
          ],
        ),
      ),
    );
  }
}
