import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final IconData? icon;
  final String text;
  final void Function() onPressed;
  const MenuItem({
    super.key,
    this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 66,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: widget.onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon != null ? widget.icon : Icons.add,
              color:
                  widget.icon != null ? Color(0xFF2E3A59) : Colors.transparent,
            ),
            Text(
              widget.text,
              style: const TextStyle(
                color: Color(0xFF2E3A59),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
