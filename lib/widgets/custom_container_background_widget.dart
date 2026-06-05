import 'package:flutter/material.dart';

class CustomContainerBackgroudWidget extends StatelessWidget {
  final Widget child;
  const CustomContainerBackgroudWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
