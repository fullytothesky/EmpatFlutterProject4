import 'package:flutter/material.dart';

class ScreenAndriyWidget extends StatelessWidget {
  const ScreenAndriyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Andriy's Screen"),
      ),
      body: Expanded(
        flex: 3,
        child: Column(
          children: [
            Hero(
              tag: "Andriy",
              child: Image.asset(
                "assets/Andriy.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: const Text(
                "Our handsome Lead UI/UX Designer Andrii who gave us new knowledges in design that will help us in our career!",
                style: TextStyle(fontSize: 19),
              ),
            )
          ],
        ),
      ),
    );
  }
}
