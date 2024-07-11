import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollHideExample(),
    );
  }
}

class ScrollHideExample extends StatefulWidget {
  @override
  _ScrollHideExampleState createState() => _ScrollHideExampleState();
}

class _ScrollHideExampleState extends State<ScrollHideExample> {
   late ScrollController controller;
  bool isVisible = true;
  double _scrollThreshold = 100.0; // Adjust as needed

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (controller.position.userScrollDirection == ScrollDirection.forward) {
      // Scrolling down
      if (isVisible) {
        setState(() {
          isVisible = false;
        });
      }
    } else {
      // Scrolling up
      if (!isVisible) {
        setState(() {
          isVisible = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Hide Example'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: ListView.builder(
        controller: controller,
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(
          title: Text('Item $index'),
        ),
      ),
    );
  }
}

