import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {

  final String text;
  final Color color;
  final void Function() onPressed;

  const DrawerItem({
    super.key,
    required this.mainColor,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  final Color mainColor;

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Container(
        width: double.infinity,
        height: 40,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          widget.text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: widget.color,
          ),
        ),
      ),
    );
  }
}
