import 'package:flutter/material.dart';

import '../../../future/init/extension/image_extension.dart';
import '../cubit/register_cubit.dart';
import '../payment_view.dart';
import 'input_widget.dart';

class ThirdStep extends StatelessWidget {
  const ThirdStep({
    super.key,
    required this.state,
  });

  final RegisterState state;

  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.symmetric(horizontal: 15.0, vertical: 8);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SvgEnum.logo.svgPicture(Colors.white, 67, 150),
            TextBar(text: "Fill your Credit / Debit \nCard Details"),
            Padding(
              padding: edgeInsets,
              child: InputWidget(hintText: "Name"),
            ),
            Padding(
              padding: edgeInsets,
              child: InputWidget(hintText: "Surname"),
            ),
            Padding(
              padding: edgeInsets,
              child: InputWidget(
                hintText: "Card Number",
                isPayment: true,
                widget: Icon(Icons.credit_card, color: Colors.black),
              ),
            ),
            Padding(
              padding: edgeInsets,
              child: InputWidget(hintText: "Date"),
            ),
            Padding(
              padding: edgeInsets,
              child: InputWidget(hintText: "CVV"),
            ),
            ChangeLine()]
        ),
      ),
    );
  }
}