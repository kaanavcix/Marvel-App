import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../cubit/register_cubit.dart';
import '../model/payment_model.dart';

class PaymentBar extends StatelessWidget {
  PaymentBar({

    required this.state,
    required this.onTap,
    required this.paymentModel,
  });

  final RegisterState state;

  final void Function()? onTap;
  final PaymentModel paymentModel;
  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.symmetric(horizontal: 15.0, vertical: 8);
    const edgeInsets2 = EdgeInsets.symmetric(vertical: 20);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: edgeInsets,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: state.isWhich == paymentModel.payment_id
                  ? context.getPrimaryColor()
                  : null,
              border: Border.all(
                color: context.getPrimaryColor(),
                width: 3,
              )),
          child: Padding(
            padding: edgeInsets2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(paymentModel.payment_name ?? "",
                    style: context
                        .getTextTheme()
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 25)),
                Text(paymentModel.payment_price ?? "",
                    style: context
                        .getTextTheme()
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class PaymentCardBar extends StatelessWidget {
  const PaymentCardBar({
    super.key,
    required this.state,
    required this.onTap,
    required this.model,
  });

  final RegisterState state;
  final void Function()? onTap;
  final PaymentModel? model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        height: 70,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: state.isWhich == model?.payment_id
                ? context.getPrimaryColor()
                : null,
            border: Border.all(
              color: context.getPrimaryColor(),
              width: 3,
            )),
        child: Align(
            alignment: Alignment.center,
            child: Text(model?.payment_name ?? "",
                style: context
                    .getTextTheme()
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 20))),
      ),
    );
  }
}
