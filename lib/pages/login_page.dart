import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tolet_app/utils/app_color.dart';
import 'package:tolet_app/widgets/auth_button.dart';
import 'package:tolet_app/widgets/auth_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: 60,
                  ),
                  Image.asset(
                    "assets/black_logo.png",
                    height: 200,
                    width: 200,
                  ),
                  const Text(
                    "ToLet",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4),
                  ),
                  const Text(
                    "Find your House",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 4),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  AuthTextField(
                    labelText: "Number",
                    controller: numberController,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    labelText: "Password",
                    controller: passwordController,
                    textInputType: TextInputType.text,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () => print("Forgot Password"),
                          child: const Text(
                            "Forgot ?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5),
                          ))
                    ],
                  ),
                  AuthButton(
                    btnText: 'Login',
                    onclick: () {
                      print("Login Button");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
