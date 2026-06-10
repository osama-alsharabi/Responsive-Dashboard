import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeHeaderWidget extends StatelessWidget {
  const IncomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Income", style: AppStyles.textStyle20SemiBold(context)),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xffF1F1F1)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Monthly", style: AppStyles.textStyle16Medium(context)),
              const SizedBox(width: 18),
              Center(
                child: Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xff064061),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
