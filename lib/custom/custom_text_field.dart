import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Size size;
  final String hint;
  final bool obscure;
  bool isPassword;
  final bool isIcon;
  final bool readOnly;
  // final Function? onChanged;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.size,
    required this.hint,
    // this.onChanged,
    this.obscure = false,
    this.isPassword = false,
    this.isIcon = false,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        // onChanged: (value) {
        //   widget.onChanged!();
        // },
        cursorColor: Colors.black26,
        controller: widget.controller,
        obscureText: widget.obscure,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: widget.size.width * 0.025,
            vertical: widget.size.height * 0.015,
          ),
          hintText: widget.hint,

        ),

        autocorrect: false,
        readOnly: widget.readOnly,
      ),
    );
  }
}