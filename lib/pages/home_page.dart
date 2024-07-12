import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tolet_app/utils/theme/textTheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                 ),
                 const Divider(color: Colors.white10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     OutlinedButton(
                       onPressed: () {
                         showModalBottomSheet(
                           context: context,
                           builder: (context) {
                             return Container(
                               color: Colors.white,
                               height: 200,
                               child: const Center(
                                 child: Text('This is a modal bottom sheet'),
                               ),
                             );
                           },
                         );
                       },
                       style: OutlinedButton.styleFrom(
                         // padding: EdgeInsets.all(value),
                         foregroundColor: Colors.white,
                         side: const BorderSide(color: Colors.white),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10), // Border radius
                         ), // Outline color
                       ),
                       child: const Row(
                         children: [
                           Icon(Icons.sort,size: 20,color: Colors.white60,weight: 300,),
                           Text('Sort',style: mediumText,),
                         ],
                       ),
                     ),
                     OutlinedButton(
                       onPressed: () {
                         showModalBottomSheet(
                           context: context,
                           shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadius.vertical(
                               top: Radius.circular(25.0),
                             ),
                           ),
                           backgroundColor: Colors.blueAccent,
                           builder: (context) {
                             return Container(
                               padding: const EdgeInsets.all(16.0),
                               height: 300,
                               child: Column(
                                 children: [
                                   const Text(
                                     'Custom Bottom Sheet',
                                     style: TextStyle(
                                       fontSize: 24,
                                       color: Colors.white,
                                     ),
                                   ),
                                   const SizedBox(height: 10),
                                   ElevatedButton(
                                     onPressed: () {
                                       Navigator.pop(context);
                                     },
                                     child: const Text('Close'),
                                   ),
                                 ],
                               ),
                             );
                           },
                         );
                         // Define the action to be performed when the button is pressed
                       },
                       style: OutlinedButton.styleFrom(
                         foregroundColor: Colors.white,
                         side: const BorderSide(color: Colors.white),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10), // Border radius
                         ),
                       ),
                       child: const Row(
                         children: [
                           Icon(Icons.place_outlined,size: 20,color: Colors.white60,weight: 300,),
                           Text('Location',style: mediumText,),
                         ],
                       ),
                     ),
                     OutlinedButton(
                       onPressed: () {
                         // Define the action to be performed when the button is pressed
                       },
                       style: OutlinedButton.styleFrom(
                         foregroundColor: Colors.white,
                         side: const BorderSide(
                           color: Colors.white,
                         ),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10), // Border radius
                         ),
                       ),
                       child: const Row(
                         children: [
                           Icon(Icons.tune_outlined,size: 20,color: Colors.white60,weight: 300,),
                           Text('Filter',style: mediumText,),
                         ],
                       ),
                     ),
                   ],
                 ),
                 const Divider(color: Colors.white10,),

               ],
             ),
           ),
            Expanded(
              child:  GridView.builder(
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
                                  margin: const EdgeInsets.only(right: 4,bottom: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8), // Adjust this value for roundness
                                  ),
                                  child: const Text("16,000 \u09F3",style: TextStyle(backgroundColor: Colors.black,color: Colors.white,fontSize: 12)),
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
}

