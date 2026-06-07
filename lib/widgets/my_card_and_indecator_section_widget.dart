import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dots_indecators_widget.dart';
import 'package:responsive_dashboard/widgets/my_card_page_view_widget.dart';

class MyCardAndIndecatorSectionWidget extends StatefulWidget {
  const MyCardAndIndecatorSectionWidget({super.key});

  @override
  State<MyCardAndIndecatorSectionWidget> createState() =>
      _MyCardAndIndecatorSectionWidgetState();
}

class _MyCardAndIndecatorSectionWidgetState
    extends State<MyCardAndIndecatorSectionWidget> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardPageViewWidget(pageController: pageController),
        const SizedBox(height: 19),
        DotsIndecatorWidget(currentPageIndex: currentPageIndex),
      ],
    );
  }

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }
}
