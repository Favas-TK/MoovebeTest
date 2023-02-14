import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adddriverwidet extends StatelessWidget {
  const adddriverwidet({
    super.key,
    required this.controller,
    required this.text1,
  });

  final TextEditingController? controller;
  final String? text1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 232, 226, 226),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 23,
            horizontal: 10,
          ),
          hintText: text1,
          hintStyle: GoogleFonts.abel(
            fontSize: 17,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}