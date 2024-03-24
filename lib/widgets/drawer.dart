import 'package:flutter/material.dart';
import 'package:flutter_fourth_app/widgets/log_in.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset("assets/avatar_photo.jpg",
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vlad Kryvorot",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.white),
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 10,
              right: 10,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.code,
                color: Colors.white,
                size: 40,
              ),
              title: const Text("My Projects",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.chat_bubble_sharp,
                color: Colors.white,
                size: 40,
              ),
              title: const Text(
                "Chats",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: ListTile(
              leading:
                  const Icon(Icons.settings, color: Colors.white, size: 40),
              title: const Text(
                "Settings",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
                size: 40,
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    // отута використовуємо pushAndRemoveUntil для того щоб всі попередні сторінки видалилися із стеку навігації і кнопки повернутися не було(Оскільки це типу як Log in)
                    MaterialPageRoute(
                      builder: (context) => const LogInWidget(),
                    ),
                    (Route<dynamic> route) =>
                        false // видаляю попередні сторінки
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}
