import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/counter/counter_screen.dart';
import 'package:flutter_application_1/presentation/list/list_screen.dart';
import 'package:flutter_application_1/presentation/theme_animation/theme_animation.dart';
import 'package:flutter_application_1/presentation/widgets/widget_examples.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({Key? key}) : super(key: key);
  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetExamplesScreen(),
          CounterScreen(),
          ListScreen(),
          ThemeAnimationScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "example"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
          BottomNavigationBarItem(icon: Icon(Icons.light_mode), label: "theme"),
        ],
      ),
    );
  }
}
