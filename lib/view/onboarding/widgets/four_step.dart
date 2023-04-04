import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:pinput/pinput.dart';

import '../../../future/init/extension/image_extension.dart';
import '../cubit/register_cubit.dart';
import '../payment_view.dart';
import 'input_widget.dart';

class FourStep extends StatelessWidget {
  const FourStep({
    super.key,
    required this.state,
  });

  final RegisterState state;

  @override
  Widget build(BuildContext context) {
    const edgeInsets =  EdgeInsets.symmetric(horizontal: 4);
    final defaultPinTheme = PinTheme(
      margin:  edgeInsets,
      width: 40,
      height: 50,
      textStyle: const TextStyle(
          fontSize: 18.3, color: Colors.white, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Color(0xfffffff).withOpacity(0.2),
        borderRadius: BorderRadius.circular(9),
      ),
    );

    var data =
        """ Please enter the OTP that we’ve sent on your phone number 55XXXXXX99 linked with your bank account.""";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        SvgEnum.logo.svgPicture(Colors.white, 67, 150),
        const TextBar(text: "Enter Your OTP"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Pinput(
            onCompleted: (pin) {
              context.read<RegisterCubit>().completeControl(pin);
            },
            androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
            defaultPinTheme: defaultPinTheme,
          ),
        ),
        Text("Didn’t receive the OTP?",
            style: context
                .getTextTheme()
                .titleSmall!
                .copyWith(color: context.getPrimaryColor()))
      ],
    );
  }
}