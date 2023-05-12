import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  final String imgUrl;
  const Category({
    super.key,
    required this.mainColor,
    required this.imgUrl,
  });

  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 55,
        height: 55,
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}