import 'package:flutter/material.dart';

class CustomContainerBackgroudWidget extends StatelessWidget {
  final Widget child;
  final double? padding;
  const CustomContainerBackgroudWidget({
    super.key,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
