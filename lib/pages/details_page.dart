import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10,
        body: Container(
          height: Get.height,
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Image
                Container(
                  // height: Get.height / 3,
                  width: Get.width,
                  color: Colors.white60,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/no1.jpg",
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Colors.black38,
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Colors.black38,
                              ),
                              child: const Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Details
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          Text(
                            "Title",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "sub title",
                            style: TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                                border: Border.all(color: Colors.white60)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.bed,
                                  color: Colors.white54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4 Beds",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                                border: Border.all(color: Colors.white60)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.bathtub_outlined,
                                  color: Colors.white54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2 Beds",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                                border: Border.all(color: Colors.white60)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.square_outlined,
                                  color: Colors.white54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "5000 Sq. Ft",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //price info
                      const Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.money,
                                color: Colors.white54,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Price Information",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Price",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "BDT 450,000",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Price for",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "monthly",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //location info
                      const Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.not_listed_location_outlined,
                                color: Colors.white54,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Location Information",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Division",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Dhaka",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.black12,),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "District",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Dhaka",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.white10,),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Area",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Mirpur",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "House No/Street",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "! Content is Blocked.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Contract info
                      const Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.perm_contact_cal_outlined,
                                color: Colors.white54,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Contract Information",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Mobile",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "01900-000000",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.black12,),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "District",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Dhaka",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "House No/Street",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "! Content is Blocked.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
            
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
