import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tolet_app/utils/theme/textTheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedOption = 'All';

  void handleRadioValueChange(String? value) {
    setState(() {
      selectedOption = value!;
      print(selectedOption);
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Container(
              color: Colors.black.withOpacity(.1),
              child: Column(
                children: [
                  AppBar(
                    title: const Text(
                      "ToLet",
                      style: TextStyle(color: Colors.white),
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                  ),
                  const Divider(
                    color: Colors.white10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () => _showBottomSheet3(
                            context, selectedOption, handleRadioValueChange),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
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
                        onPressed: () => _showBottomSheet2(context),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
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
                        onPressed: () => _showBottomSheet(context),
                        style: OutlinedButton.styleFrom(
                          // padding: EdgeInsets.all(value),
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ), // Outline color
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
                    color: Colors.white10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                padding: const EdgeInsets.all(10.0),
                itemCount: 8,
                itemBuilder: (context, index) {
                  // return Card(
                  //   color: Colors.blueGrey,
                  //   child: Column(
                  //     children: [
                  //       Container(height:140,width:250,child: Image.asset("assets/tolet.png",)),
                  //       Text("Title",style: TextStyle(color: Colors.white10,fontWeight: FontWeight.w600,fontSize: 16),),
                  //       Text("sub title",style: TextStyle(color: Colors.white10,fontWeight: FontWeight.w300),)
                  //     ],
                  //   ),
                  // );
                  return Card(
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
                                    borderRadius: BorderRadius.circular(
                                        8), // Adjust this value for roundness
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
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      // isScrollControlled: true,
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          // decoration: const BoxDecoration(
          //   // color: Colors.blueGrey,
          //   borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35),)
          // ),
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
              ListTile(
                title: const Text('Option 1'),
                onTap: () {
                  // Handle option 1
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Option 2'),
                onTap: () {
                  // Handle option 2
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Option 3'),
                onTap: () {
                  // Handle option 3
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      // isScrollControlled: true,
      backgroundColor: Colors.white10,

      context: context,
      builder: (BuildContext context) {
        return Container(
          // decoration: const BoxDecoration(
          //   // color: Colors.blueGrey,
          //   borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35),)
          // ),
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.refresh_outlined),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
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
                    labelText: "label",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width:
                                2)) // contentPadding: EdgeInsets.only(left: 12),
                    // counterStyle: TextStyle(fontWeight: FontWeight.bold),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    //   borderSide: BorderSide(color: Colors.white),
                    // ),
                    //

                    // hintStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
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
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: Colors.white12,
                        )),
                    labelText: "label",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width:
                                2)) // contentPadding: EdgeInsets.only(left: 12),
                    // counterStyle: TextStyle(fontWeight: FontWeight.bold),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    //   borderSide: BorderSide(color: Colors.white),
                    // ),
                    //

                    // hintStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
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
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: Colors.white12,
                        )),
                    labelText: "label",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width:
                                2)) // contentPadding: EdgeInsets.only(left: 12),
                    // counterStyle: TextStyle(fontWeight: FontWeight.bold),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    //   borderSide: BorderSide(color: Colors.white),
                    // ),
                    //

                    // hintStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
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
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: () {}, child: const Text("Save")),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showBottomSheet3(BuildContext context, selectedOption, handleRadioValueChange) {
    showModalBottomSheet(
      showDragHandle: true,
      // isScrollControlled: true,
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          // decoration: const BoxDecoration(
          //   // color: Colors.blueGrey,
          //   borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35),)
          // ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Select Type',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54),
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
              ),
              Column(
                children: <Widget>[
                  RadioListTile<String>(
                    title: selectedOption == "All"
                        ? const Text('All',
                            style: TextStyle(color: Colors.white))
                        : const Text(
                            'All',
                            style: TextStyle(color: Colors.white60),
                          ),
                    value: 'All',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Family"
                        ? const Text('Family',
                            style: TextStyle(color: Colors.white))
                        : const Text(
                            'Family',
                            style: TextStyle(color: Colors.white60),
                          ),
                    value: 'Family',
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: selectedOption == "Bachelor"
                        ? const Text('Bachelor',
                            style: TextStyle(color: Colors.white))
                        : const Text(
                            'Bachelor',
                            style: TextStyle(color: Colors.white60),
                          ),
                    value: 'Bachelor',
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
                  RadioListTile<String>(
                    title: selectedOption == "Sublet"
                        ? const Text('Sublet',
                            style: TextStyle(color: Colors.white))
                        : const Text(
                            'Sublet',
                            style: TextStyle(color: Colors.white60),
                          ),
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
}
