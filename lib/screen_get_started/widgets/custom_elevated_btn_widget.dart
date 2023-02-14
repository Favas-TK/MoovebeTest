

import 'package:flutter/material.dart';
import 'package:moovebe/extra/res/colors.dart';
import 'package:moovebe/screen_get_started/widgets/custom_text_widget.dart';


class CustomElevatedBtnWidget extends StatelessWidget {
  const CustomElevatedBtnWidget({
    required this.btnText,
    required this.onpressed,
    this.btnTextColor = red,
    this.btnColor = white,
    Key? key,
  }) : super(key: key);
  final String btnText;
  final Function onpressed;
  final Color btnColor;
  final Color btnTextColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          btnColor,
        ),
      ),
      onPressed: () {
        onpressed();
      },
      child: CustomTextWidget(
        text: btnText,
        color: btnTextColor,
      ),
    );
  }
}
