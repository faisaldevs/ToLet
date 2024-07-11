// import 'package:flutter/material.dart';
// import 'package:tolet_app/utils/app_color.dart';
// import 'package:tolet_app/utils/theme/textTheme.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white10,
//       body: Column(
//         children: [
//          Container(
//            color: Colors.black.withOpacity(.1),
//            child: Column(
//              children: [
//                AppBar(
//                  title: const Text(
//                    "ToLet",
//                    style: TextStyle(color: Colors.white),
//                  ),
//                  centerTitle: true,
//                  backgroundColor: Colors.transparent,
//                ),
//                const Divider(color: Colors.white10,),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                  children: [
//                    OutlinedButton(
//                      onPressed: () {
//                        print('Sort');
//                      },
//                      style: OutlinedButton.styleFrom(
//                        // padding: EdgeInsets.all(value),
//                        foregroundColor: Colors.white,
//                        side: const BorderSide(color: Colors.white),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(10), // Border radius
//                        ), // Outline color
//                      ),
//                      child: const Row(
//                        children: [
//                          Icon(Icons.sort,size: 20,color: Colors.white60,weight: 300,),
//                          Text('Sort',style: mediumText,),
//                        ],
//                      ),
//                    ),
//                    OutlinedButton(
//                      onPressed: () {
//                        // Define the action to be performed when the button is pressed
//                        print('Location');
//                      },
//                      style: OutlinedButton.styleFrom(
//                        foregroundColor: Colors.white,
//                        side: const BorderSide(color: Colors.white),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(10), // Border radius
//                        ),
//                      ),
//                      child: const Row(
//                        children: [
//                          Icon(Icons.place_outlined,size: 20,color: Colors.white60,weight: 300,),
//                          Text('Location',style: mediumText,),
//                        ],
//                      ),
//                    ),
//                    OutlinedButton(
//                      onPressed: () {
//                        // Define the action to be performed when the button is pressed
//                        print('Filter');
//                      },
//                      style: OutlinedButton.styleFrom(
//                        foregroundColor: Colors.white,
//                        side: const BorderSide(
//                          color: Colors.white,
//                        ),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(10), // Border radius
//                        ),
//                      ),
//                      child: const Row(
//                        children: [
//                          Icon(Icons.tune_outlined,size: 20,color: Colors.white60,weight: 300,),
//                          Text('Filter',style: mediumText,),
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//                const Divider(color: Colors.white10,),
//
//              ],
//            ),
//          ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.all(16),
//               child: GridView.builder(
//                 // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 //   crossAxisCount: 2, // Number of columns
//                 //   // mainAxisSpacing: 10.0, // Spacing between rows
//                 //   // crossAxisSpacing: 10.0, // Spacing between columns
//                 //   childAspectRatio: 2 / 1, // Aspect ratio of the items
//                 // ),
//                 padding: const EdgeInsets.all(10.0),
//                 itemCount: 8,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: Center(
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 200,
//                             width: 200,
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewBuilderExample(),
    );
  }
}

class GridViewBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder Example'),
      ),
      body: Container(
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
              margin: EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                            padding: EdgeInsets.all(4),
                            margin: EdgeInsets.only(right: 4,bottom: 4),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8), // Adjust this value for roundness
                            ),
                            child: Text("16,000 \u09F3",style: TextStyle(backgroundColor: Colors.black,color: Colors.white,fontSize: 12)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                      "Title",
                      style: TextStyle(
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
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //   ),
      //   itemCount: 20, // Total number of items
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: Center(
      //         child: Text('Item $index'),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
