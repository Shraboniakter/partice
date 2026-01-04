import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final bool isActive;

  const Dot({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 40 : 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xffEDDF99) : Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

