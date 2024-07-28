import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tolet_app/pages/home_page.dart';
import 'package:tolet_app/pages/login_page.dart';
import 'package:tolet_app/widgets/auth_button.dart';
import 'package:tolet_app/widgets/auth_textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final TextEditingController nameController = TextEditingController();

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.black87,
  // appBar: AppBar(
  //   backgroundColor: Colors.black87,
  //   centerTitle: true,
  //   title: Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Image.asset(
  //         "assets/black_logo.png",
  //         height: 50,
  //         width: 50,
  //       ),
  //       Text("ToLet",style: TextStyle(color: Colors.white),)
  //     ],
  //   ),
  // ),
  //     body: Container(
  //       color: Colors.black87,
  //       child: Column(
  //         children: [
  //           AuthTextField(controller: nameController, textInputType: TextInputType.text, labelText: "Full Name"),
  //
  //         ],
  //       ),
  //     ),
  //   );

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/black_logo.png",
              height: 50,
              width: 50,
            ),
            const Text(
              "ToLet",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          GestureDetector(
           onTap: () => Get.offAll(HomePage()),
            child: Container(
              // decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.white)),
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
              padding: EdgeInsets.only(right: 10, bottom: 10),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.black87,
          height: Get.height,
          width: Get.width,
          child: SizedBox(
            height: Get.height.h,
            width: Get.width.w,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/profile.png")),
                              border:
                                  Border.all(width: 3, color: Colors.white54),
                              color: Colors.white,
                              shape: BoxShape.circle),
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 1)),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 25,
                                  color: Colors.white,
                                )),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: Icon(
                                Icons.photo_size_select_actual_outlined,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    labelText: "Full Name",
                    controller: nameController,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    labelText: "Email",
                    controller: nameController,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    labelText: "number",
                    controller: nameController,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    labelText: "address",
                    controller: nameController,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const Column(
                      children: [
                        Text(
                          "NID",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            shape: BoxShape.rectangle,
                            color: Colors.black45,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                color: Colors.white54,
                              ),
                              Icon(
                                Icons.photo_size_select_actual_outlined,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(width: 20,),
                        Container(
                          height: 80,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            shape: BoxShape.rectangle,
                            color: Colors.black45,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                color: Colors.white54,
                              ),
                              Icon(
                                Icons.photo_size_select_actual_outlined,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthButton(
                    btnText: 'Sign up',
                    onclick: () {
                      print("sign up Button");
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "already have account? ",
                  //       style: TextStyle(color: Colors.white54, fontSize: 16),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () => Get.offAll(LoginPage()),
                  //       child: Text(
                  //         "Login",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 16),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
