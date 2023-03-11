import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/image_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/future/init/routes/app_router.gr.dart';
import 'package:marvelapp/view/onboarding/cubit/register_cubit.dart';
import 'package:marvelapp/view/onboarding/data/payment_data.dart';
import 'package:marvelapp/view/onboarding/model/payment_model.dart';
import 'package:marvelapp/view/onboarding/widgets/marvel_button.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return MarvelButton(
            state,
            text: "Contiune",
            isSelected: state.isWhich != null,
            onTap: () => context.read<RegisterCubit>().contiuneButton(),
          );
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
            height: 55,
            child: BlocBuilder<RegisterCubit, RegisterState>(
              builder: (context, state) {
                return appBarStep(context, state);
              },
            )),
      ),
      body: Center(child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          List<Widget> stepsScreen = [
            firstStep(context, state),
            secondStep(context, state),
            thirdStep(context, state)
          ];
          return stepsScreen[state.pins!.last - 1];
        },
      )),
    );
  }

  Row appBarStep(BuildContext context, RegisterState state) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        topNumberButton(context, 1, state.pins ?? [1]),
        lineWidget(context, 1, state.pins ?? [1]),
        topNumberButton(context, 2, state.pins ?? [1]),
        lineWidget(context, 2, state.pins ?? [1]),
        topNumberButton(context, 3, state.pins ?? [1]),
      ],
    );
  }

  Widget secondStep(BuildContext context, RegisterState state) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SvgEnum.logo.svgPicture(Colors.white, 67, 150),
        textBar(context, "Choose how to pay"),
        paymentCardBar(state, context, () {},
            model: PaymentData.paymentModel[3]),
        paymentCardBar(state, context, () {},
            model: PaymentData.paymentModel[4]),
        Text(
            "${context.read<RegisterCubit>().payment.payment_name}  ${context.read<RegisterCubit>().payment.payment_price} ")
      ],
    );
  }

  Widget paymentCardBar(
      RegisterState state, BuildContext context, void Function()? onTap,
      {PaymentModel? model}) {
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

  Widget thirdStep(BuildContext context, RegisterState state) {
    return Column(
      children: [],
    );
  }

  Widget firstStep(BuildContext context, RegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        SvgEnum.logo.svgPicture(Colors.white, 67, 150),
        textBar(context, "Choose your Plan"),
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
                  .selectedOkey(PaymentData.paymentModel[0]);
            },
            paymentModel: PaymentData.paymentModel[0]),
        PaymentBar(
            state: state,
            onTap: () {
              context
                  .read<RegisterCubit>()
                  .selectedOkey(PaymentData.paymentModel[1]);
            },
            paymentModel: PaymentData.paymentModel[1]),
        PaymentBar(
          paymentModel: PaymentData.paymentModel[2],
          state: state,
          onTap: () {
            context
                .read<RegisterCubit>()
                .selectedOkey(PaymentData.paymentModel[2]);
          },
        ),
        const Spacer(),
      ],
    );
  }

  Padding textBar(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(text,
          style: context
              .getTextTheme()
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w900, fontSize: 24)),
    );
  }

  Container lineWidget(BuildContext context, int text, List<int> index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: 5,
      decoration: BoxDecoration(
          color: index.contains(text)
              ? context.getPrimaryColor()
              : context.getPrimaryColor().withOpacity(0.3),
          borderRadius: BorderRadius.circular(80)),
      width: 50,
    );
  }

  Container topNumberButton(BuildContext context, int text, List<int> index) {
    return Container(
      height: 27,
      width: 27,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index.contains(text)
              ? context.getPrimaryColor()
              : context.getPrimaryColor().withOpacity(0.3)),
      child: Center(
          child: Text("${text}",
              style: context
                  .getTextTheme()
                  .labelMedium!
                  .copyWith(fontWeight: FontWeight.bold))),
    );
  }
}

class PaymentBar extends StatelessWidget {
  PaymentBar({
    super.key,
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
