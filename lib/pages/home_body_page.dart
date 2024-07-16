import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tolet_app/pages/details_page.dart';
import 'package:tolet_app/utils/theme/textTheme.dart';

class HomeBodyPage extends StatefulWidget {
  const HomeBodyPage({super.key});

  @override
  State<HomeBodyPage> createState() => _HomePageState();
}

class _HomePageState extends State<HomeBodyPage> {
  late ScrollController controller;
  // final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  String selectedOption = 'All';
  String sortByOption = "Newest";

  void handleRadioValueChange(String? value) {
    setState(() {
      selectedOption = value!;
      if (kDebugMode) {
        print(selectedOption);
      }
      Navigator.pop(context);
    });
  }

  void sortByOptionValueChange(String? value) {
    setState(() {
      sortByOption = value!;
      if (kDebugMode) {
        print(sortByOption);
      }
      Navigator.pop(context);
    });
  }

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      drawer: _drawer(),
      body: SafeArea(
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverAppBar(
              title: const Text(
                "ToLet",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.black87,
              foregroundColor: Colors.white70,
              surfaceTintColor: Colors.transparent,
              floating: true,
              pinned: false,
              snap: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                ),
              ],
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                child: PreferredSize(
                  preferredSize: const Size.fromHeight(70),
                  child: Container(
                    color: Colors.black87,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutlinedButton(
                              onPressed: () => _category(context, selectedOption, handleRadioValueChange),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.tune_outlined,
                                    size: 20,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    'ক্যাটাগরি',
                                    style: mediumText,
                                  ),
                                ],
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () => _location(context),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.place_outlined,
                                    size: 20,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    'লোকেশন',
                                    style: mediumText,
                                  ),
                                ],
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () => _sortBy(context),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.sort,
                                    size: 20,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    'অন্যান্য',
                                    style: mediumText,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              pinned: true,
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return GestureDetector(
                    onTap: () => Get.to(() => const DetailsPage(), curve: Curves.linearToEaseOut,duration: const Duration(milliseconds: 400)),
                    child: Card(
                      elevation: 4,
                      margin: const EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 130,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/tolet.png",
                                  height: 130,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    margin: const EdgeInsets.only(right: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Text("16,000 \u09F3",
                                        style: TextStyle(
                                            backgroundColor: Colors.black,
                                            color: Colors.white,
                                            fontSize: 12)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Colors.black87,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      "Title",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "sub title",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                childCount: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sortBy(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Sort By',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white60),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Column(
                children: <Widget>[
                  RadioListTile<String>(
                    title: sortByOption == "Newest"
                        ? const Text('Newest', style: TextStyle(color: Colors.white))
                        : const Text('Newest', style: TextStyle(color: Colors.white60)),
                    value: 'Newest',
                    groupValue: sortByOption,
                    onChanged: sortByOptionValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: sortByOption == "htl"
                        ? const Text('Price (High to Low)', style: TextStyle(color: Colors.white))
                        : const Text('Price (High to Low)', style: TextStyle(color: Colors.white60)),
                    value: 'htl',
                    groupValue: sortByOption,
                    onChanged: sortByOptionValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: sortByOption == "lth"
                        ? const Text('Price (Low to High)', style: TextStyle(color: Colors.white))
                        : const Text('Price (Low to High)', style: TextStyle(color: Colors.white60)),
                    value: 'lth',
                    groupValue: sortByOption,
                    onChanged: sortByOptionValueChange,
                    activeColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _location(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Select Area',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white60),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Banani', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    title: Text('Uttara', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    title: Text('Mohakhali', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _category(BuildContext context, String selectedOption, void Function(String?) handleRadioValueChange) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white60),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Column(
                children: <Widget>[
                  RadioListTile<String>(
                    title: selectedOption == "All"
                        ? const Text('All', style: TextStyle(color: Colors.white))
                        : const Text('All', style: TextStyle(color: Colors.white60)),
                    value: 'All',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Office"
                        ? const Text('Office', style: TextStyle(color: Colors.white))
                        : const Text('Office', style: TextStyle(color: Colors.white60)),
                    value: 'Office',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Sublet"
                        ? const Text('Sublet', style: TextStyle(color: Colors.white))
                        : const Text('Sublet', style: TextStyle(color: Colors.white60)),
                    value: 'Sublet',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                  radius: 40,
                ),
                SizedBox(height: 8.0),
                Text(
                  'Username',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text('Home', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text('Profile', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final PreferredSize child;

  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => child.preferredSize.height;

  @override
  double get maxExtent => child.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
