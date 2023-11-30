// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CButtonSignUp extends StatelessWidget {
  final String title;
  final String? img; // Making img nullable by using String?
  final Color textColor;
  final Color backColor;

  const CButtonSignUp({
    Key? key,
    required this.title,
    this.img,
    required this.textColor,
    required this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black26)),
        ),
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (img != null) // Check if img is not null
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Image.asset(img!), // Use the img value if it's not null
              ),
            Text(title), // Always display the title
          ],
        ),
      ),
    );
  }
}
