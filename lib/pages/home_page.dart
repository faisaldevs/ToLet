import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tolet_app/pages/home_body_page.dart';
import 'package:tolet_app/pages/login_page.dart';
import 'package:tolet_app/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 1;
  List pages = [
    const LoginPage(),
    const HomeBodyPage(),
    const ProfilePage(),
  ];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      // drawer: drawer(),
      // drawerScrimColor: Colors.white,
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white24,
        backgroundColor: Colors.black87,
        key: _bottomNavigationKey,
        index: _page,
        items: const <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }

  // void _sortBy(BuildContext context) {
  //   showModalBottomSheet(
  //     backgroundColor: Colors.black,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: <Widget>[
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: <Widget>[
  //                 const Text(
  //                   'Sort By',
  //                   style: TextStyle(
  //                     fontSize: 18.0,
  //                     color: Colors.white60,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //                 IconButton(
  //                   icon: const Icon(Icons.close),
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                 ),
  //               ],
  //             ),
  //             const SizedBox(height: 10.0),
  //             Column(
  //               children: <Widget>[
  //                 RadioListTile<String>(
  //                   title: sortByOption == "Newest"
  //                       ? const Text('Newest',
  //                           style: TextStyle(color: Colors.white))
  //                       : const Text(
  //                           'Newest',
  //                           style: TextStyle(color: Colors.white60),
  //                         ),
  //                   value: 'Newest',
  //                   groupValue: sortByOption,
  //                   onChanged: sortByOptionValueChange,
  //                   activeColor: Colors.white,
  //                 ),
  //                 RadioListTile<String>(
  //                   title: sortByOption == "htl"
  //                       ? const Text('Price (High to Low)',
  //                           style: TextStyle(color: Colors.white))
  //                       : const Text(
  //                           'Price (High to Low)',
  //                           style: TextStyle(color: Colors.white60),
  //                         ),
  //                   value: 'htl',
  //                   groupValue: sortByOption,
  //                   onChanged: sortByOptionValueChange,
  //                   activeColor: Colors.white,
  //                 ),
  //                 RadioListTile<String>(
  //                   title: sortByOption == "lth"
  //                       ? const Text('Price (Low to High)',
  //                           style: TextStyle(color: Colors.white))
  //                       : const Text(
  //                           'Price (Low to High)',
  //                           style: TextStyle(color: Colors.white60),
  //                         ),
  //                   value: 'lth',
  //                   groupValue: sortByOption,
  //                   onChanged: sortByOptionValueChange,
  //                   activeColor: Colors.white,
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  // drawer() {
  //   return const Drawer();
  // }
}
