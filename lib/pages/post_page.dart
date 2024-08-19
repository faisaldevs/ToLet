import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tolet_app/pages/home_page.dart';
import 'package:tolet_app/widgets/post_page_1.dart';
import 'package:tolet_app/widgets/post_page_2.dart';
import 'package:tolet_app/widgets/post_page_3.dart';
import 'package:tolet_app/widgets/post_page_4.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  int currentStep = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,backgroundColor: Colors.transparent,foregroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.add), Text("Add Post")],
        ),
        centerTitle: true,
      ),
      body: Stepper(
        physics: const AlwaysScrollableScrollPhysics(),
        connectorThickness: 1,
        elevation: 0,
        type: StepperType.horizontal,
        currentStep: currentStep,
        controlsBuilder: (BuildContext context, ControlsDetails controls) {
          return const Row(
            children: <Widget>[
              SizedBox.shrink(),
            ],
          );
        },
        onStepTapped: (step) {
          print(step);
          setState(() {
            currentStep = step;
            print(step);
          });
        },
        steps: [
          Step(
              title: const SizedBox.shrink(),
              content: PostPageOne(
                onTap: () {
                  print("hi");
                  print(currentStep);

                  setState(() {
                    currentStep = 1;
                  });
                },
                // selectedIndex: selectedIndex,
              )),
          Step(
              title: const SizedBox.shrink(),
              content: PostPageTwo(
                previous: () {
                  setState(() {
                    currentStep = 0;
                  });
                },
                next: () {
                  setState(() {
                    currentStep = 2;
                  });
                },
              )),
          Step(
              title: const SizedBox.shrink(),
              content: PostPageThree(
                previous: () {
                  setState(() {
                    currentStep = 1;
                  });
                },
                next: () {
                  setState(() {
                    currentStep = 3;
                  });
                },
              )),
          Step(
              title: const SizedBox.shrink(),
              content: PostPageFour(
                previous: () {
                  setState(() {
                    currentStep = 2;
                  });
                },
                next: () {
                  Get.to(const HomePage());
                },
              )),
        ],
      ),
    );
  }
}
