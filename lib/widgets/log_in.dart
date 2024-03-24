import 'package:flutter/material.dart';
import 'package:flutter_fourth_app/main.dart';

class LogInWidget extends StatelessWidget {
  const LogInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(0, 161, 255, 34),
              Color.fromRGBO(0, 255, 143, 24)
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.transparent),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      "Welcome,Vlad",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(207, 5, 94, 138)),
                    child: ListTile(
                      leading: const Icon(Icons.login,
                          color: Colors.white, size: 30),
                      title: const Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            //pushReplacement замість push, оскільки нам не потрібна кнопка повернутися
                            builder: (context) => const Application(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
