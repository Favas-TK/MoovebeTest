import 'package:flutter/material.dart';
import 'package:moovebe/extra/extentions/extentions.dart';
import 'package:moovebe/extra/res/colors.dart';
import 'package:moovebe/extra/res/const_widget.dart';
import 'package:moovebe/home_page/home_screen.dart';
import 'package:moovebe/screen_get_started/widgets/custom_elevated_btn_widget.dart';
import 'package:moovebe/screen_login/widgets/custom_text_field_widget.dart';
import 'package:moovebe/screen_login/widgets/top_stack_welcome_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          const TopStackWelcomeWidget(),
          Padding(
            padding: EdgeInsets.all(
              context.getSize().width * 0.1,
            ),
            child: Column(
              children: <Widget>[
                CustomTextFieldWidget(
                  controller: mailController,
                  hintText: 'Enter Username',
                ),
                space10,
                CustomTextFieldWidget(
                  controller: passwordController,
                  hintText: 'Enter Password',
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: CustomElevatedBtnWidget(
            btnText: 'Login',
            onpressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            btnColor: red,
            btnTextColor: white,
          ),
        ),
      ),
    );
  }
}
