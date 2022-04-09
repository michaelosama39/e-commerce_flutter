import 'package:e_commerce_flutter/auth/presentation/forget_password/screen/reset_password_screen.dart';
import 'package:e_commerce_flutter/auth/presentation/register/screen/register_screen.dart';
import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_user.dart';
import 'package:e_commerce_flutter/default_button.dart';
import 'package:e_commerce_flutter/home/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';

class VerifyEmailBody extends StatefulWidget {
  VerifyEmailBody({Key? key}) : super(key: key);

  @override
  _VerifyEmailBodyState createState() => _VerifyEmailBodyState();
}

class _VerifyEmailBodyState extends State<VerifyEmailBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Verify Email',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Please enter your email and we will send\nyou e-mail to return to your account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 90,
                ),
                Form(
                  key: _formKey,
                  child: TextFiledUser(
                    'Enter your email',
                    'Email',
                    'assets/icons/Mail.svg',
                    TextInputType.emailAddress,
                    _emailController,
                        (value) {
                      // Todo
                    },
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                DefaultButton(
                  'Continue',
                  18,
                      () {
                    setState(() {
                      if (_emailController.text.isNotEmpty) {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetPasswordScreen(),),);
                      } else {
                        print('error Screen');
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don`t have an account? ',
                      style: TextStyle(fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen(),),);
                      },
                      child: Text(
                        'Sign Up ',
                        style: TextStyle(
                            fontSize: 16, color: Color(0xFFFF7643)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
