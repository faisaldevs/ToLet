import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.btnText, required this.onclick});
  final String btnText;
  final void Function() onclick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: onclick,
        style:  ElevatedButton.styleFrom(
          // padding: EdgeInsets.symmetric(vertical: 1),
            backgroundColor: const Color(0xff334155),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )

        ),
        child: Text(btnText,style: const TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
