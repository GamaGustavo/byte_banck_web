import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({
    Key? key,
    required this.title,
    required this.icon,
    this.iconSize = 25.0,
    this.iconColor = Colors.white,
    this.width = 150.0,
    this.height = 100.0,
    this.textColor = Colors.white,
    required this.onTap,
    this.buttonColor,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final double width;
  final double height;
  final double iconSize;
  final Color iconColor;
  final Color textColor;
  final Color? buttonColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Color buttonColor =
        this.buttonColor ?? Theme.of(context).colorScheme.primary;
    return Material(
      color: buttonColor,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: iconSize, color: iconColor),
                Text(
                  title,
                  style: TextStyle(color: textColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
