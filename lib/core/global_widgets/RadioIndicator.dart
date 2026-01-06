
import 'package:flutter/material.dart';

class RadioCircle extends StatelessWidget {
  final bool isSelected;

  const RadioCircle({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected
              ? const Color(0xffEDDF99)
              : Colors.white38,
          width: 2,
        ),
      ),
      child: isSelected
          ? Center(
        child: Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffEDDF99),
          ),
        ),
      )
          : null,
    );
  }
}
