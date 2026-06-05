import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container_background_widget.dart';
import 'package:responsive_dashboard/widgets/latest_transcation_section_widget.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header_widget.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackgroudWidget(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeaderWidget(),
          SizedBox(height: 24),
          LatestTranscationSectionWidget( ),
        ],
      ),
    );
  }
}
