import 'package:flutter/material.dart';

class SettingLabel extends StatelessWidget {
  const SettingLabel({Key? key, required this.icons, required this.title})
      : super(key: key);

  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Container(
        height: 60,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Icon
                Icon(icons),
                SizedBox(width: 10),
                //Text
                Text(title),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
