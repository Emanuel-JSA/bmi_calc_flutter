import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.cardChild,
    this.color = const Color(0xFF1A1C1E),
    this.onTap,
  });

  final Widget cardChild;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: double.infinity,
        child: Card(
          color: color,
          child: cardChild,
        ),
      ),
    );
  }
}