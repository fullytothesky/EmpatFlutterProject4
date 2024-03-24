import 'package:flutter/material.dart';

class ScreenValyaWidget extends StatelessWidget {
  const ScreenValyaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valya's Screen"),
      ),
      body: Expanded(
        flex: 3,
        child: Column(
          children: [
            Hero(
              tag: "Valya",
              child: Image.asset(
                "assets/Valya.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: const Text(
                "Our Flutter mentor who always make amazing lectures about useful Flutter widgets.Валя Одужуй!",
                style: TextStyle(fontSize: 19),
              ),
            )
          ],
        ),
      ),
    );
  }
}
