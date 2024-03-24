import 'package:flutter/material.dart';

class ScreenYaroslavWidget extends StatelessWidget {
  const ScreenYaroslavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yaroslav's Screen"),
      ),
      body: Expanded(
        flex: 3,
        child: Column(
          children: [
            Hero(
              tag: "Yaroslav",
              child: Image.asset(
                "assets/Yaroslav.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: const Text(
                "Our Back End Mentor who will also help us on FullStack Track ",
                style: TextStyle(fontSize: 19),
              ),
            )
          ],
        ),
      ),
    );
  }
}
