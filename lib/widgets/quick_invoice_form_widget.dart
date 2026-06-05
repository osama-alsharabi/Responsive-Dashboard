import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button_widget.dart';
import 'package:responsive_dashboard/widgets/custom_title_text_field_widget.dart';

class QuickInvoiceFormWidget extends StatelessWidget {
  const QuickInvoiceFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextFieldWidget(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitleTextFieldWidget(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextFieldWidget(
                title: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitleTextFieldWidget(
                title: "Item mount",
                hint: "USD",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButtonWidget(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xff4EB7F2),
                title: "Add more details",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomButtonWidget(
                backgroundColor: Color(0xff4EB7F2),
                foregroundColor: Colors.white,
                title: "Send",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
