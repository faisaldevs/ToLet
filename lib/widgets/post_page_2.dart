import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPageTwo extends StatelessWidget {
  const PostPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    List propertyTypeList = [
      "House",
      "Unit",
      "Room",
      "Seat",
      "Flat",
      "Floor",
      "Apartment"
    ];
    return Container(
      width: Get.width * 0.9,
      // height: Get.height * 0.75,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: Colors.black26,
                )),
            width: Get.width,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Property Type",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: Get.width * .8,
                  height: 40,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                          child: Text(
                        propertyTypeList[index],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: Colors.black26,
                )),
            width: Get.width,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Room Total",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.minimize_outlined),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: Colors.black26,
                )),
            width: Get.width,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Room Total",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.minimize_outlined),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: Colors.black26,
                )),
            width: Get.width,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Room Total",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.minimize_outlined),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width,
            height: Get.width * .25,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black26),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(),
                  child: Text(
                    "Floor Level",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      // validator: validation,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        // color: AppTheme.textColorRed,
                      ),
                      decoration: const InputDecoration(
                        labelText: "Ground Flor",
                        // fillColor: AppTheme.textFieldColor,
                        filled: true,
                        // contentPadding: EdgeInsets.only(left: 12),
                        // counterStyle:
                        //     TextStyle(fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(15)),
                            // borderSide: BorderSide.,
                            ),
                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                                BorderSide(width: 2, color: Colors.black)),
                        labelStyle: TextStyle(
                            // color: AppTheme.textColorRed,
                            ),
                        hintStyle: TextStyle(
                            // color: AppTheme.textColorRed,
                            ),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 4,
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width,
            height: Get.width * .25,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black26),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(),
                  child: Text(
                    "Member Restriction",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      // validator: validation,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        // color: AppTheme.textColorRed,
                      ),
                      decoration: const InputDecoration(
                        labelText: "No Restriction",
                        // fillColor: AppTheme.textFieldColor,
                        filled: true,
                        // contentPadding: EdgeInsets.only(left: 12),
                        // counterStyle:
                        //     TextStyle(fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(15)),
                            // borderSide: BorderSide.,
                            ),
                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                                BorderSide(width: 2, color: Colors.black)),
                        labelStyle: TextStyle(
                            // color: AppTheme.textColorRed,
                            ),
                        hintStyle: TextStyle(
                            // color: AppTheme.textColorRed,
                            ),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 4,
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "▪",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      " Size in Squre Feet",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.white10),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.black54),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(color: Colors.yellow),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 34,
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: const BoxDecoration(color: Colors.yellow),
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 34,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//          Container(
//
//             child:  Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text("▪",style: TextStyle(
//                         fontSize: 24,fontWeight: FontWeight.w500
//                     ),),
//                     Text(" Size in Squre Feet",style: TextStyle(
//                       fontSize: 18,fontWeight: FontWeight.w500
//                     ),),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//
//                           suffix: Container(
//                             width: 150,
//                             // height: Get.width *.15,
//                             color: Colors.blueAccent,
//                           ),
//                           border: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.white10), borderRadius: BorderRadius.all(Radius.circular(5))),
//                           focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black54), borderRadius: BorderRadius.all(Radius.circular(5))),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 150,
//                       height: Get.width *.15,
//                       color: Colors.blueAccent,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
