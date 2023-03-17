import 'package:flutter/material.dart';
import 'package:marvelapp/future/constant/color_constant.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          // Padding(padding: EdgeInsets.symmetric(vertical:8)),
          textbar("General Settings", context),
          listTile(
            context,
            "Autoplay",
            false,
            onTap: (p0) {},
          ),
          listTile(
            context,
            "Push Notifications",
            true,
            onTap: (p0) {},
          ),
          divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          textbar("Download Preferences", context),
          listTile(
            context,
            "Autodelete upon completion",
            false,
            onTap: (p0) {},
          ),
          listTile(
            context,
            "Download only with Wi-Fi",
            true,
            onTap: (p0) {},
          ),
          divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          textbar("Download Video Quality", context),
          checkboxListitle(context, "High Definition", "Uses more data", true),
          checkboxListitle(
            context,
            "Standard Definition",
            "Uses less data",
            false,
          ),

          divider(),
        ]),
      ),
    );
  }

  CheckboxListTile checkboxListitle(
      BuildContext context, String title, String subtitle, bool isOkey,
      {void Function(bool?)? onChanged}) {
    return CheckboxListTile(
      value: isOkey,
      onChanged: onChanged,
      //  activeColor: context.getPrimaryColor(),

      checkColor: ColorConstant.scaffoaldBackground,
      subtitle: Text(
        subtitle,
        style: context.getTextTheme().labelSmall!.copyWith(
            fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),
      ),
      title: Text(title,
          style: context.getTextTheme().bodyLarge!.copyWith(
                fontWeight: FontWeight.w900,
              )),
    );
  }

  Padding textbar(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(text,
            style: context.getTextTheme().titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.5))),
      ),
    );
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Divider(
        color: Colors.white.withOpacity(0.5),
        height: 1,
        thickness: 1,
        endIndent: 1,
      ),
    );
  }

  SwitchListTile listTile(BuildContext context, String text, bool value,
      {void Function(bool)? onTap}) {
    return SwitchListTile(
      activeColor: context.getPrimaryColor(),
      inactiveTrackColor: Colors.white,
      hoverColor: Colors.white,
      inactiveThumbColor: Colors.white,
      value: value,
      onChanged: onTap,
      title: Text(text,
          style: context.getTextTheme().bodyLarge!.copyWith(
                fontWeight: FontWeight.w900,
              )),
    );
  }
}
