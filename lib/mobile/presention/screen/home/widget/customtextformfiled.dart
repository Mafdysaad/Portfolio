import 'package:flutter/material.dart';

class Customtextformfiled extends StatelessWidget {
  const Customtextformfiled(
      {super.key,
      required this.hint,
      this.higth,
      required this.typeofkeborad,
      required this.texteditingcontroller});
  final String hint;
  final double? higth;
  final TextInputType typeofkeborad;
  final TextEditingController texteditingcontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: higth,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 5, color: Colors.black),
        left: BorderSide(width: 5, color: Colors.black),
      )),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          controller: texteditingcontroller,
          maxLines: higth == null ? 1 : null,
          keyboardType: typeofkeborad,
          textInputAction: higth == null ? null : TextInputAction.newline,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
