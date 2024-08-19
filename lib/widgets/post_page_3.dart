// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// //
// // class PostPageThree extends StatefulWidget {
// //   const PostPageThree({super.key, required this.previous, required this.next});
// //
// //   final Function() previous;
// //   final Function() next;
// //
// //   @override
// //   State<PostPageThree> createState() => _PostPageThreeState();
// // }
// //
// // class _PostPageThreeState extends State<PostPageThree> {
// //
// //   String _selectedValue = "Daily";
// //
// //   void _handleRadioValueChange(String? value) {
// //     setState(() {
// //       _selectedValue = value!;
// //       print("Selected value: $_selectedValue");
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     List propertyTypeList = [
// //       "House",
// //       "Unit",
// //       "Room",
// //       "Seat",
// //       "Flat",
// //       "Floor",
// //       "Apartment"
// //     ];
// //     return Container(
// //       // width: Get.width * 0.9,
// //       // height: Get.height * 0.75,
// //       child: SingleChildScrollView(
// //         child: Column(
// //           // mainAxisAlignment: MainAxisAlignment.end,
// //           children: [
// //             Container(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Row(
// //                     children: [
// //                       Text(
// //                         "▪",
// //                         style:
// //                         TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
// //                       ),
// //                       Text(
// //                         " Rent Price",
// //                         style:
// //                         TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
// //                       ),
// //                     ],
// //                   ),
// //                   Row(
// //                     children: [
// //                       SizedBox(
// //                         width: Get.width * .3,
// //                         child: TextField(
// //                           maxLines: 1,
// //                           decoration: InputDecoration(
// //                             border: OutlineInputBorder(
// //                                 borderSide:
// //                                 BorderSide(width: 1, color: Colors.white10),
// //                                 borderRadius: BorderRadius.only(
// //                                     topLeft: Radius.circular(5),
// //                                     bottomLeft: Radius.circular(5))),
// //                             focusedBorder: OutlineInputBorder(
// //                                 borderSide:
// //                                 BorderSide(width: 2, color: Colors.black54),
// //                                 borderRadius:
// //                                 BorderRadius.all(Radius.circular(5))),
// //                           ),
// //                         ),
// //                       ),
// //                       Container(
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.only(
// //                               topRight: Radius.circular(5),
// //                               bottomRight: Radius.circular(5)),
// //                           color: Colors.red,
// //                         ),
// //                         padding:
// //                         EdgeInsets.symmetric(horizontal: 20, vertical: 15),
// //                         // width: 100,
// //                         // height: 100,
// //                         child: Text(
// //                           "BDT",
// //                           style: TextStyle(
// //                               fontWeight: FontWeight.w500, fontSize: 18),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             Container(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Row(
// //                     children: [
// //                       Text(
// //                         "▪",
// //                         style:
// //                         TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
// //                       ),
// //                       Text(
// //                         " Rent Priod",
// //                         style:
// //                         TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
// //                       ),
// //                     ],
// //                   ),
// //                   Row(
// //                     children: [
// //                       Container(
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.only(
// //                               topRight: Radius.circular(5),
// //                               bottomRight: Radius.circular(5)),
// //                           color: Colors.red,
// //                         ),
// //                         padding:
// //                         EdgeInsets.symmetric(horizontal: 20, vertical: 15),
// //                         // width: 100,
// //                         // height: 100,
// //                         child: Row(
// //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                           children: <Widget>[
// //                             _buildRadioOption("Daily"),
// //                             _buildRadioOption("Weekly"),
// //                             _buildRadioOption("Monthly"),
// //                             _buildRadioOption("Yearly"),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             const SizedBox(
// //               height: 10,
// //             ),
// //             Align(
// //               alignment: Alignment.bottomCenter,
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   GestureDetector(
// //                     onTap: widget.previous,
// //                     child: Container(
// //                         padding: const EdgeInsets.symmetric(
// //                             horizontal: 20, vertical: 10),
// //                         decoration: const BoxDecoration(color: Colors.yellow),
// //                         child: const Icon(
// //                           Icons.arrow_back,
// //                           size: 34,
// //                         )),
// //                   ),
// //                   GestureDetector(
// //                     onTap: widget.next,
// //                     child: Container(
// //                       padding: const EdgeInsets.symmetric(
// //                           horizontal: 20, vertical: 10),
// //                       decoration: const BoxDecoration(color: Colors.yellow),
// //                       child: const Icon(
// //                         Icons.arrow_forward,
// //                         size: 34,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //   Widget _buildRadioOption(String value) {
// //     return Expanded(
// //       child: GestureDetector(
// //         onTap: () {
// //           _handleRadioValueChange(value);
// //         },
// //         child: RadioListTile<String>(
// //           title: Text(
// //             value,
// //             style: TextStyle(fontSize: 16),
// //           ),
// //           value: value,
// //           groupValue: _selectedValue,
// //           onChanged: _handleRadioValueChange,
// //           dense: true,
// //           contentPadding: EdgeInsets.symmetric(horizontal: 0),
// //           visualDensity: VisualDensity.compact,
// //         ),
// //       ),
// //     );
// //   }
// // }

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPageThree extends StatefulWidget {
  const PostPageThree({super.key, required this.previous, required this.next});

  final Function() previous;
  final Function() next;

  @override
  State<PostPageThree> createState() => _PostPageThreeState();
}

class _PostPageThreeState extends State<PostPageThree> {
  String _selectedValue = "Monthly";

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedValue = value!;
      if (kDebugMode) {
        print("Selected value: $_selectedValue");
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection(
            title: "Rent Price",
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width * .3,
                  child: const TextField(keyboardType: TextInputType.number,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border:  OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: Colors.white10),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black54),
                      borderRadius:
                      BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                    color: Colors.red,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: const Text(
                    "BDT",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _buildSection(
            title: "Rent Period",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildRadioOption("Daily"),
                _buildRadioOption("Weekly"),
                _buildRadioOption("Monthly"),
                _buildRadioOption("Yearly"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavigationButton(
                  onTap: widget.previous,
                  icon: Icons.arrow_back,
                ),
                _buildNavigationButton(
                  onTap: widget.next,
                  icon: Icons.arrow_forward,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "▪",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              " $title",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 10),
        child,
      ],
    );
  }

  Widget _buildRadioOption(String value) {
    return RadioListTile<String>(
      title: Text(
        value,
        style: const TextStyle(fontSize: 16),
      ),
      value: value,
      groupValue: _selectedValue,
      onChanged: _handleRadioValueChange,
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      visualDensity: VisualDensity.compact,
    );
  }

  Widget _buildNavigationButton({required Function() onTap, required IconData icon}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Icon(icon, size: 34),
      ),
    );
  }
}

