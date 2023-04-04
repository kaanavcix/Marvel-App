import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../../../future/init/extension/image_extension.dart';
import '../cubit/register_cubit.dart';
import '../data/payment_data.dart';
import 'input_widget.dart';
import 'payment_bar.dart';

class FirstStep extends StatelessWidget {
  const FirstStep({
    super.key,
    required this.state,
  });

  final RegisterState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SvgEnum.logo.svgPicture(Colors.white, 67, 150),
        TextBar(text: "Choose your Plan"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text("Cancel at any time",
              style: context.getTextTheme().labelMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.5))),
        ),
        PaymentBar(
            state: state,
            onTap: () {
              context
                  .read<RegisterCubit>()
                  .isSelected(PaymentData.paymentModel[0]);
            },
            paymentModel: PaymentData.paymentModel[0]),
        PaymentBar(
            state: state,
            onTap: () {
              context
                  .read<RegisterCubit>()
                  .isSelected(PaymentData.paymentModel[1]);
            },
            paymentModel: PaymentData.paymentModel[1]),
        PaymentBar(
          paymentModel: PaymentData.paymentModel[2],
          state: state,
          onTap: () {
            context
                .read<RegisterCubit>()
                .isSelected(PaymentData.paymentModel[2]);
          },
        ),
        const Spacer(),
      ],
    );
  }
}