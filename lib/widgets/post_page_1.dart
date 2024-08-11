import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tolet_app/data/local_data.dart';

class PostPageOne extends StatelessWidget {
  const PostPageOne({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: Get.width * 0.9,
      // color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Select Category",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns in the grid
                crossAxisSpacing: 10.0, // Horizontal spacing between items
                mainAxisSpacing: 10.0, // Vertical spacing between items
                childAspectRatio: 1.0, // Aspect ratio of each item
              ),
              itemCount: 5, // Number of items in the grid
              itemBuilder: (context, index) {
                var t = postOne[index]["title"].toString();
                var e = postOne[index]["logo"].toString();
                return GestureDetector(
                  onTap: onTap,
                  child: Card(

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Image.asset(
                            "$e",
                            fit: BoxFit.cover,
                          ),
                        ),
                         Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              t,
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                // return GestureDetector(
                //   onTap: onTap,
                //   child: Container(
                //     // height: 100,
                //     // width: 100,
                //     // margin: EdgeInsets.all(10),
                //     padding: EdgeInsets.all(10),
                //     decoration: BoxDecoration(
                //       // border: Border.all(width: 5, color: Colors.green),
                //       border: Border.all(width: 1, color: Colors.black),
                //       color: Colors.blue,
                //     ),
                //     // child: Center(
                //     //   child: Text("$index"),
                //     // )
                //     child: Column(
                //       children: [
                //         Expanded(
                //           flex: 3,
                //           child: Image.asset(
                //             "$e", // Make sure this path is correct
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //         Expanded(
                //           flex: 1,
                //           child: Padding(
                //             padding: const EdgeInsets.all(4.0),
                //             child: Text(
                //               "$t",
                //               style: const TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
