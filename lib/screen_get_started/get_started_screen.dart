import 'package:flutter/material.dart';
import 'package:moovebe/extra/res/colors.dart';
import 'package:moovebe/screen_login/login_page.dart';
import 'widgets/custom_elevated_btn_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Center(
        child: Image.asset(
          'assets/image/Group 1.png',
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          width: double.infinity,
          child: CustomElevatedBtnWidget(
            btnText: 'Get Started',
            onpressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            btnTextColor: red,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
