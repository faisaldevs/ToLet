import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPageTwo extends StatelessWidget {
  const PostPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: Get.height * 0.75,
      color: Colors.blue,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: const BoxDecoration(color: Colors.yellow),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 34,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
