// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:scroll_to_hide/scroll_to_hide.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   late ScrollController controller;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     controller = ScrollController();-
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hide Navigation on Scroll'),
//         ),
//         body: ListView.builder(
//           controller: controller,
//           itemCount: 50,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text('Item $index'),
//             );
//           },
//         ),
//         bottomNavigationBar: ScrollToHide(
//           scrollController: controller,hideDirection: Axis.vertical,
//           child: BottomNavigationBar(items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
//             BottomNavigationBarItem(icon: Icon(Icons.feed),label: "feed"),
//             BottomNavigationBarItem(icon: Icon(Icons.verified_user),label: "profile"),
//           ]),
//         ),
//       ),
//     );
//   }
// }
//
//
