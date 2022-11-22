import 'package:flutter/material.dart';

class CactusType extends StatelessWidget {
  final String cactusType;
  final bool isSelected;
  final VoidCallback onTap;

  CactusType({
    required this.cactusType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          cactusType,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.black : Colors.orange,
          ),
        ),
      ),
    );
  }
}
