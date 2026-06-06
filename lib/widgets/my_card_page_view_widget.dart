import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_widget.dart';

class MyCardPageViewWidget extends StatelessWidget {
  final PageController pageController;

  const MyCardPageViewWidget({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      child: PageView.builder(
        controller: pageController,
        padEnds: false,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 16.0 : 0),
            child: const MyCardWidget(),
          );
        },
      ),
    );
  }
}
