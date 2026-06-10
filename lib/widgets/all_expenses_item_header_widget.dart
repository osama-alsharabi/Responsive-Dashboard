import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeaderWidget extends StatelessWidget {
  final String image;
  final bool isBalance;
  const AllExpensesItemHeaderWidget({
    super.key,
    required this.image,
    this.isBalance = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: isBalance
                      ? const Color(0xffFFFFFF).withAlpha(60)
                      : const Color(0xffFAFAFA),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      isBalance ? Colors.white : const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Transform.rotate(
            angle: 3.14159265,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: isBalance ? Colors.white : const Color(0xff064061),
            ),
          ),
        ),
      ],
    );
  }
}
