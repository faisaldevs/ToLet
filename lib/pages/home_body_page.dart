import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
  // int _page = 1;
  // List pages = [
  //   const HomePage(),
  //   const ProfilePage(),
  // ];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  String selectedOption = 'All';
  String sortByOption = "Newest";

  void handleRadioValueChange(String? value) {
    setState(() {
      selectedOption = value!;
      print(selectedOption);
      Navigator.pop(context);
    });
  }

  void sortByOptionValueChange(String? value) {
    setState(() {
      sortByOption = value!;
      print(sortByOption);
      Navigator.pop(context);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      drawer: drawer(),
      // drawerScrimColor: Colors.white,
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
                              onPressed: () => _category(context,
                                  selectedOption, handleRadioValueChange),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.white,
                                ),
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
                                    weight: 300,
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
                                    weight: 300,
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
                                    weight: 300,
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
                    onTap: () => Get.to(DetailsPage()),
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
                                  height: 130,
                                  width: double.infinity,
                                  "assets/tolet.png",
                                  fit: BoxFit.cover,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    margin: const EdgeInsets.only(
                                        right: 4, bottom: 4),
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
                              width: Get.width,
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
                    icon: const Icon(Icons.close),
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
                        ? const Text('Newest',
                        style: TextStyle(color: Colors.white))
                        : const Text(
                      'Newest',
                      style: TextStyle(color: Colors.white60),
                    ),
                    value: 'Newest',
                    groupValue: sortByOption,
                    onChanged: sortByOptionValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: sortByOption == "htl"
                        ? const Text('Price (High to Low)',
                        style: TextStyle(color: Colors.white))
                        : const Text(
                      'Price (High to Low)',
                      style: TextStyle(color: Colors.white60),
                    ),
                    value: 'htl',
                    groupValue: sortByOption,
                    onChanged: sortByOptionValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: sortByOption == "lth"
                        ? const Text('Price (Low to High)',
                        style: TextStyle(color: Colors.white))
                        : const Text(
                      'Price (Low to High)',
                      style: TextStyle(color: Colors.white60),
                    ),
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
      // isScrollControlled: true,
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
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.refresh_outlined,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                        color: Colors.white12,
                      )),
                  labelText: "Division",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                value: null,
                onChanged: (newValue) {},
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text("Text 1"),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text("Text 2"),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text("Text 3"),
                  ),
                  DropdownMenuItem(value: 4, child: Text("Text 4")),
                ],
              ),
              const SizedBox(height: 10.0),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                        color: Colors.white12,
                      )),
                  labelText: "District",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                value: null,
                onChanged: (newValue) {},
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text("Text 1"),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text("Text 2"),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text("Text 3"),
                  ),
                  DropdownMenuItem(value: 4, child: Text("Text 4")),
                ],
              ),
              const SizedBox(height: 10.0),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                        color: Colors.white12,
                      )),
                  labelText: "sub district",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                value: null,
                onChanged: (newValue) {},
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text("Text 1"),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text("Text 2"),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text("Text 3"),
                  ),
                  DropdownMenuItem(value: 4, child: Text("Text 4")),
                ],
              ),
              const SizedBox(height: 10.0),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Save")),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _category(BuildContext context, String selectedOption,
      Function(String?) handleRadioValueChange) {
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
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white60,
                    ),
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
                        ? const Text('All',
                        style: TextStyle(color: Colors.white))
                        : const Text('All',
                        style: TextStyle(color: Colors.white60)),
                    value: 'All',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Family"
                        ? const Text('Family',
                        style: TextStyle(color: Colors.white))
                        : const Text('Family',
                        style: TextStyle(color: Colors.white60)),
                    value: 'Family',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Bachelor"
                        ? const Text('Bachelor',
                        style: TextStyle(color: Colors.white))
                        : const Text('Bachelor',
                        style: TextStyle(color: Colors.white60)),
                    value: 'Bachelor',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Sublet"
                        ? const Text('Sublet',
                        style: TextStyle(color: Colors.white))
                        : const Text('Sublet',
                        style: TextStyle(color: Colors.white60)),
                    value: 'Sublet',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Office"
                        ? const Text('Office',
                        style: TextStyle(color: Colors.white))
                        : const Text(
                      'Office',
                      style: TextStyle(color: Colors.white60),
                    ),
                    value: 'Office',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Shop"
                        ? const Text('Shop',
                        style: TextStyle(color: Colors.white))
                        : const Text(
                      'Shop',
                      style: TextStyle(color: Colors.white60),
                    ),
                    value: 'Shop',
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

  drawer() {
    return Drawer();
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
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
