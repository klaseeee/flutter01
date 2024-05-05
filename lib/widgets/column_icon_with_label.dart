import 'package:flutter/material.dart';

class ColumnIconWithLabel extends StatelessWidget {
  const ColumnIconWithLabel(
      {super.key,
      required this.label,
      this.labelColor,
      required this.icon,
      this.iconColor});

  final String label;
  final Color? labelColor;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 24,
          color: iconColor,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: labelColor),
        )
      ],
    );
  }
}
