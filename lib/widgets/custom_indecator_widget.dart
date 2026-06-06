import 'package:flutter/material.dart';

class CustomIndecatorWidget extends StatelessWidget {
  final bool isActive;
  const CustomIndecatorWidget({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      duration: const Duration(milliseconds: 350),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
