import 'dart:async';

import 'package:flutter/material.dart';

class ImageBuilderPage extends StatefulWidget {
  const ImageBuilderPage({super.key, required this.imagePaths});

  final List imagePaths;

  @override
  State<ImageBuilderPage> createState() => _ImageBuilderPageState();
}

class _ImageBuilderPageState extends State<ImageBuilderPage> {
  // final PageController pageController = PageController(initialPage: 0);
  Timer? timer;
  int _activePage = 0;
  late List _page;

  // void startTimer(){
  //   timer = Timer.periodic(const Duration(seconds: 3), (timer){
  //     if(pageController.page == widget.imagePaths.length-1){
  //       pageController. animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  //     }else{
  //       pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  //     }
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _page = List.generate(
      widget.imagePaths.length,
          (index) => imageBuilderPage(
        widget.imagePaths[index],
      ),
    );
    // startTimer();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // pageController.dispose();
    // startTimer();

  }

  @override
  Widget build(BuildContext context) {
    List imagePaths = widget.imagePaths;
    return Column(
      children: [
        Stack(children: [
          //image slider
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3.5,
            child: PageView.builder(
              // controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  _activePage = value;
                });
              },
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return _page[index];
              },
            ),
          ),
          //image indicator
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  imagePaths.length,
                      (index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: () {
                        // pageController.animateToPage(index,
                        //     duration: const Duration(milliseconds: 400),
                        //     curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: _activePage == index
                            ? Colors.yellowAccent
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  imageBuilderPage(imagePath) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}