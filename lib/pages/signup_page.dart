import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
            Text("ToLet",style: TextStyle(color: Colors.white),)
          ],
        ),
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
                        child: Column(
                          children: [
                            Text("NID"),
                          ],
                        ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "already have account? ",
                            style: TextStyle(color: Colors.white54,
                                fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}


