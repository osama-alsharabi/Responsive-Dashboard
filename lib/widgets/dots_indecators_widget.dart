import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_indecator_widget.dart';

class DotsIndecatorWidget extends StatelessWidget {
  final int currentPageIndex;
  const DotsIndecatorWidget({super.key, required this.currentPageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => CustomIndecatorWidget(isActive: currentPageIndex == index),
      ),
    );
  }
}
