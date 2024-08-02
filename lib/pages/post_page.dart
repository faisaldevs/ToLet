// import 'package:flutter/material.dart';
// import 'package:tolet_app/data/local_data.dart';
//
// class PostPage extends StatefulWidget {
//   const PostPage({super.key});
//
//   @override
//   State<PostPage> createState() => _PostPageState();
// }
//
// class _PostPageState extends State<PostPage> {
//   int currentStep = 0;
//   List<Map<String, String>> steplist = [
//     {'task': '1', 'content': "Step 1"},
//     {'task': '2', 'content': "Step 2"},
//     {'task': '3', 'content': "Step 3"},
//     {'task': '4', 'content': "Step 4"},
//   ];
//
//
//   List<Step> steps = [
//     const Step(
//         title: Text("title"),
//         content: Center(
//           child: Text(""),
//         ))
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: Scaffold(
//         body: Container(
//           margin: EdgeInsets.all(16),
//           child: Column(
//             children: [
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.add,
//                     size: 35,
//                   ),
//                   Text(
//                     "Add Post",
//                     style: TextStyle(
//                       color: Colors.black,
//                     fontWeight: FontWeight.w500,fontSize: 24),
//                   )
//                 ],
//               ),
//               Expanded(
//                 child: LayoutBuilder(
//                   builder: (BuildContext context, BoxConstraints constraints) {
//                     double stepperHeight = constraints.maxHeight;
//                     double stepperWidth = constraints.maxWidth;
//
//                     return SingleChildScrollView(
//                       child: SizedBox(
//                         height: stepperHeight * 0.9, // Adjust as needed
//                         width: stepperWidth,
//                         child: Stepper(
//                           physics: const NeverScrollableScrollPhysics(),
//                           connectorThickness: 1,
//                           elevation: 0,
//                           type: StepperType.horizontal,
//                           currentStep: currentStep,
//                           controlsBuilder:
//                               (BuildContext context, ControlsDetails controls) {
//                             return const Row(
//                               children: <Widget>[
//                                 SizedBox.shrink(),
//                               ],
//                             );
//                           },
//                           onStepTapped: (step) => setState(() {
//                             currentStep = step;
//                           }),
//                           steps: getSteps(),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   List<Step> getSteps() {
//     var itemList = steplist.asMap().entries.map<Step>((e) {
//       var i = e.key;
//       var item = e.value;
//       return Step(
//         state: currentStep > i ? StepState.complete : StepState.indexed,
//         isActive: currentStep >= i,
//         title: const SizedBox.shrink(),
//         label: Text(
//           StepState.indexed == StepState.indexed ? item['content'] ?? "" : "",
//           style: TextStyle(
//               fontSize: 8, color: currentStep >= i ? Colors.blue : null),
//         ),
//         content: currentStep == 0 ? oneStep() : Container(),
//       );
//     });
//     return itemList.toList();
//   }
//   oneStep() {
//     return GestureDetector(
//
//      onTap: (){
//        print("step 1");
//        if(currentStep == 0 ){
//          currentStep = 1 ;
//        }
//      },
//       child: SizedBox(
//         height: 600,
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3, // Number of columns in the grid
//             crossAxisSpacing: 10.0, // Horizontal spacing between items
//             mainAxisSpacing: 10.0, // Vertical spacing between items
//             childAspectRatio: 1.0, // Aspect ratio of each item
//           ),
//           itemCount: 5, // Number of items in the grid
//           itemBuilder: (context, index) {
//             var t = dataOne[index]["title"].toString();
//             var e = dataOne[index]["logo"].toString();
//             // final e = data
//             return Card(
//               child: Container(
//                 // margin: EdgeInsets.all(10),
//                 // padding: EdgeInsets.all(10),
//                 // decoration: BoxDecoration(
//                 //     border: Border.all(width: 1, color: Colors.black)),
//                 // color: Colors.black,
//                 child: Column(
//                   children: [
//                     Expanded(
//                       flex: 3,
//                       child: Image.asset(
//                         e,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(4.0),
//                         child: Text(t,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
//                       ),
//                       flex: 1,
//                     )
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tolet_app/widgets/post_page_1.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  int currentStep = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.add), Text("Add Post")],
        ),
        centerTitle: true,
      ),
      body: Stepper(
        // physics: const NeverScrollableScrollPhysics(),
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
                },
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
                child: Center(child: Text("2")),
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
                child: Center(child: Text("3")),
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
                child: Center(child: Text("4")),
              )),
        ],
      ),
    );
  }
}
