import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Student's Profile",
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 34, 31, 23),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.topCenter,
                  color: Colors.black,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 190,
                    height: 210,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/avatar_photo.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.black,
            child: const Column(
              children: [
                Text(
                  "Vlad Kryvorot",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Empat School Student",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 26.0, bottom: 26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "• Flutter Track",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "• FullStack Track",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.flutter_dash,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "Flutter Project 4",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Material Desgn in Flutter",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.flutter_dash,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "Flutter Project 3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Mobile App layout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.flutter_dash,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "Flutter Project 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Dart Basics",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.flutter_dash,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "Flutter Project 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Flutter Start",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.code,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "FullStack Front-End 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Recreating adaptive design",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.design_services,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "FullStack Design 3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Landing and internal pages",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.design_services,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "FullStack Design 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Landing Page",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor: const Color.fromARGB(255, 57, 52, 52),
                    leading: const Icon(
                      Icons.design_services,
                      color: Colors.white,
                      size: 55,
                    ),
                    title: const Text(
                      "FullStack Design 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    subtitle: const Text(
                      "Personal Page",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
