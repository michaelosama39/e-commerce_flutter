import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_password_user.dart';
import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_user.dart';
import 'package:e_commerce_flutter/default_button.dart';
import 'package:e_commerce_flutter/home/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({Key? key}) : super(key: key);

  @override
  _ResetPasswordBodyState createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  final _newPasswordController = TextEditingController();

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
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Please enter your code and new \npassword to return to your account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 90,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFiledUser(
                        'Enter your code',
                        'Code',
                        'assets/icons/Mail.svg',
                        TextInputType.number,
                        _codeController,
                        (value) {
                          // Todo
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFiledPasswordUser(
                        'Enter new password',
                        'New Password',
                        'assets/icons/Lock.svg',
                        _newPasswordController,
                        (value) {
                          // Todo
                        },
                      ),
                    ],
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
                      if (_codeController.text.isNotEmpty &&
                          _newPasswordController.text.isNotEmpty) {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),),);
                      } else {
                        print('error Screen');
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
