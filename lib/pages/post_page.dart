import 'package:flutter/material.dart';
import 'package:tolet_app/widgets/post_page_1.dart';
import 'package:tolet_app/widgets/post_page_2.dart';

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
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.add), Text("Add Post")],
        ),
        centerTitle: true,
      ),
      body: Stepper(
        physics: const NeverScrollableScrollPhysics(),
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
                  print(currentStep);
                  
                  setState(() {
                    currentStep = 1;
                  });
                }, selectedIndex: selectedIndex,
              )),
          const Step(
              title: SizedBox.shrink(),
              content: PostPageTwo()),
          Step(
              title: const SizedBox.shrink(),
              content: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black)),
                // margin: EdgeInsets.all(10),
                // padding: EdgeInsets.all(10),
                height: 100,
                width: 100,
                child: const Center(child: Text("3")),
              )),
          Step(
              title: const SizedBox.shrink(),
              content: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black)),
                // margin: EdgeInsets.all(10),
                // padding: EdgeInsets.all(10),
                height: 100,
                width: 100,
                child: const Center(child: Text("4")),
              )),
        ],
      ),
    );
  }
}
