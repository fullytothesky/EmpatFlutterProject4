import 'package:flutter/material.dart';
import 'widgets/drawer.dart';
import 'widgets/home.dart';
import 'widgets/profile.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Application(),
    ),
  );
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>
    with TickerProviderStateMixin {
  // 1 step mixin for syncronization

  int indexState = 0;
  late final TabController //(анімація для bottomnavbar)
      _controller; // 2 step creating controller with late initialization only once(because of final)

  late final Animation<double> _animation; //bubble floating button animation
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    _controller = TabController(
        //3 тут ініціалізуємо цей контроллер
        vsync: this, //синхронізація завдяки цьому компоненту
        length: widgetsListbar.length);
    _controller.addListener(
      () => setState(
        () {
          indexState = _controller.index; // забезпечуємо зміну
        },
      ),
    );
  }

  List<Widget> widgetsListbar = [const HomeWidget(), const ProfileWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerBody(),
      ),
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            bubbleColor: const Color.fromARGB(134, 0, 0, 0),
            title: "Add new Mentor",
            icon: Icons.add,
            iconColor: Colors.white,
            titleStyle: const TextStyle(fontSize: 18, color: Colors.white),
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            bubbleColor: const Color.fromARGB(136, 0, 0, 0),
            title: "Add new Project",
            titleStyle: const TextStyle(fontSize: 18, color: Colors.white),
            icon: Icons.add,
            iconColor: Colors.white,
            onPress: () {
              _animationController.reverse();
            },
          ),
        ],

        animation: _animation,

        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),

        iconColor: const Color.fromARGB(255, 255, 255, 255),
        iconData: Icons.add,

        backGroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,

        // making possible to change our state for buttons
        onTap: (index) {
          setState(
            () {
              indexState = index;
              _controller.animateTo(index); //забезпечуємо анімацію для переходу
            },
          );
        },

        currentIndex: indexState, // indexes starts with 0 from the left

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 104, 74, 74)),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
      body: TabBarView(controller: _controller, children: widgetsListbar),
    );
  }
}
