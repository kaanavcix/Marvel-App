import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../future/init/extension/image_extension.dart';
import '../cubit/register_cubit.dart';
import '../data/payment_data.dart';
import '../payment_view.dart';
import 'input_widget.dart';
import 'payment_bar.dart';

class SecondStep extends StatelessWidget {
  const SecondStep({
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
        TextBar(text: "Choose how to pay"),
        PaymentCardBar(state: state,  onTap: () => context
                .read<RegisterCubit>()
                .isSelected(PaymentData.paymentModel[3]), model: PaymentData.paymentModel[3]),
        PaymentCardBar(state: state, onTap: () => context
                .read<RegisterCubit>()
                .isSelected(PaymentData.paymentModel[4]), model: PaymentData.paymentModel[4]),
        ChangeLine()
      ],
    );
  }
}