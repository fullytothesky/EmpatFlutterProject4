import 'package:flutter/material.dart';

class ScreenAlionaWidget extends StatelessWidget {
  const ScreenAlionaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aliona's Screen"),
      ),
      body: Expanded(
        flex: 3,
        child: Column(
          children: [
            Hero(
              tag: "Aliona",
              child: Image.asset(
                "assets/Aliona.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: const Text(
                "Our Beautiful UI/UX Designer Aliona who helped me with my designs!",
                style: TextStyle(fontSize: 19),
              ),
            )
          ],
        ),
      ),
    );
  }
}
