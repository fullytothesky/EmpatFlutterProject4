import 'package:flutter/material.dart';
import 'package:flutter_fourth_app/widgets/aliona_screen.dart';
import 'package:flutter_fourth_app/widgets/andrii_screen.dart';
import 'package:flutter_fourth_app/widgets/dmytro_screen.dart';
import 'package:flutter_fourth_app/widgets/mykola_screen.dart';
import 'package:flutter_fourth_app/widgets/valya_screen.dart';
import 'package:flutter_fourth_app/widgets/vlad_screen.dart';
import 'package:flutter_fourth_app/widgets/yaroslav_screen.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            pinned: true,
            expandedHeight: 150,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                "Our Mentors",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.drag_handle_outlined,
                  color: Colors.white,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 25),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            //by using this widget I am making our photo clickable and making transitions using Hero
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ScreenAlionaWidget(),
                              ),
                            ),
                            child: Hero(
                              tag: "Aliona",
                              child: Image.asset("assets/Aliona.jpg",
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Text("Aliona Scherba",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("UI/UX Designer Mentor")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    //by this widget I am making our photo clickable and making transitions using Hero
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ScreenAndriyWidget(),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 25),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Hero(
                              tag: "Andriy",
                              child: Image.asset("assets/Andriy.jpg",
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Andrii Tsabanov",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("UI/UX Lead Designer "),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    //by this widget I am making our photo clickable and making transitions using Hero
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ScreenValyaWidget(),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 25),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Hero(
                              tag: "Valya",
                              child: Image.asset("assets/Valya.jpg",
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Valya Polienova",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Flutter Mentor")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    //by this widget I am making our photo clickable and making transitions using Hero
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ScreenVladWidget(),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 25),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Hero(
                              tag: "Vlad",
                              child: Image.asset("assets/Vlad.jpg",
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Vlad Fedenko",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Flutter Mentor")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    //by this widget I am making our photo clickable and making transitions using Hero
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ScreenDmytroWidget(),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 25),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Hero(
                              tag: "Dmytro",
                              child: Image.asset("assets/Dmytro.jpg",
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Dmytro Tsymbaliuk",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Flutter Mentor")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    //by this widget I am making our photo clickable and making transitions using Hero
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ScreenMykolaWidget(),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 25),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Hero(
                              tag: "Mykola",
                              child: Image.asset("assets/Mykola.jpg",
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Mykola Chyrkov",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Front-End Mentor")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    //by this widget I am making our photo clickable and making transitions using Hero
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ScreenYaroslavWidget(),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 25),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Hero(
                              tag: "Yaroslav",
                              child: Image.asset("assets/Yaroslav.jpg",
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Yaroslav Melnychenko",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Back End Mentor")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
