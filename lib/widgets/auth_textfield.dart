import 'package:flutter/material.dart';

// class AuthTextField extends StatelessWidget {
//   const AuthTextField({super.key, required this.hintText, required this.controller});
//   final String hintText;
//   final TextEditingController controller;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: Colors.black54,
//         border: const OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: Color(0xff64748B),
//                 width: 1,
//                 style: BorderStyle.solid)),
//         focusedBorder: const OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: Color(0xffFFFFFF),
//                 width: 1.5,
//                 style: BorderStyle.solid)),
//         hintText: hintText,
//         hintStyle: const TextStyle(color: Color(0xff94A3B8), fontSize: 20),
//           suffix: GestureDetector(
//             onTap: () {
//               // Handle "Forgot?" tap
//               print("forgot");
//             },
//             child: Icon(Icons.visibility),
//           ),
//         suffixStyle: TextStyle()
//       ),
//       style: const TextStyle(color: Color(0xffCCCCCC)),
//     );
//   }
// }


class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.helperText,
    this.obscure = false,
    required this.textInputType,
    this.suffixIcon,
    this.borderColor,
    this.designNumber,
    this.isEnabled,
    this.onChanged,
    this.padding,
     this.validate,
    required this.labelText,
    this.suffixFunction,
    this.onTap, this.length, this.maxLine,
  });

  final TextEditingController? controller;
  final EdgeInsets? padding;
  final String? hintText;
  final int? maxLine;
  final String labelText;
  final String? helperText;
  final bool obscure;
  final TextInputType textInputType;
  final IconData? suffixIcon;
  final Color? borderColor;
  final int? designNumber;
  final int? length;
  final bool? isEnabled;
  final Function(String)? onChanged;
  final String Function(String?)? validate;
  final void Function()? suffixFunction;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: length,
      onTap: onTap,
      // maxLines: maxLine,
      validator: validate,
      onChanged: onChanged,
      controller: controller,
      obscureText: obscure,
      enabled: isEnabled,
      keyboardType: textInputType,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        fillColor: Colors.black54,
        filled: true,
        suffixIcon: IconButton(
            onPressed : suffixFunction,
            icon: Icon(
              suffixIcon,
              size: 28,
            )),
        contentPadding: padding,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide.none,
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide.none),
        hintText: labelText,
        // labelText: labelText,

        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
