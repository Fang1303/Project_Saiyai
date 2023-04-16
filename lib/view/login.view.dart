import 'package:flutter/material.dart';
import 'package:saiyai/utils/global.colors.dart';
import 'package:saiyai/view/widgets/button.global.dart';
import 'package:saiyai/view/widgets/social.login.dart';
import 'package:saiyai/view/widgets/text.form.global.dart';

class loginView extends StatelessWidget {
  loginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "SaiYai",
                    style: TextStyle(
                      color: GlobalColor.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  "Login to your accoun",
                  style: TextStyle(
                    color: GlobalColor.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),

                ///Emil Input
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                //// Password Input
                TextFormGlobal(
                    controller: passwordController,
                    text: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true),
                const SizedBox(height: 10),
                const ButtonGlobal(),
                const SizedBox(
                  height: 25,
                ),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
