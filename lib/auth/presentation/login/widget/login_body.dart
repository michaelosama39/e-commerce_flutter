import 'package:e_commerce_flutter/auth/data/AuthService.dart';
import 'package:e_commerce_flutter/auth/presentation/forget_password/screen/reset_password_screen.dart';
import 'package:e_commerce_flutter/auth/presentation/forget_password/screen/verify_email_screen.dart';
import 'package:e_commerce_flutter/auth/presentation/register/screen/register_screen.dart';
import 'package:e_commerce_flutter/auth/presentation/widget/socal_card.dart';
import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_password_user.dart';
import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_user.dart';
import 'package:e_commerce_flutter/default_button.dart';
import 'package:e_commerce_flutter/home/presentation/screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AuthService? _authService = new AuthService(FirebaseAuth.instance);

  @override
  Widget build(BuildContext context) {
    bool remember = false;
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
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Sign in with your email and password\nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFiledUser(
                        'Enter your email',
                        'Email',
                        'assets/icons/Mail.svg',
                        TextInputType.emailAddress,
                        _emailController,
                        (value) {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFiledPasswordUser(
                        'Enter your password',
                        'Password',
                        'assets/icons/Lock.svg',
                        _passwordController,
                        (value) {
                          // Todo
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: remember,
                            activeColor: Color(0xFFFF7643),
                            onChanged: (value) {
                              setState(() {
                                remember = value!;
                              });
                            },
                          ),
                          Text('Remember me'),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => VerifyEmailScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Forget Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      DefaultButton(
                        'Continue',
                        18,
                        login,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocalCard('assets/icons/google-icon.svg', () {}),
                          SocalCard('assets/icons/facebook-2.svg', () {}),
                          SocalCard('assets/icons/twitter.svg', () {}),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future login() async {
    if(_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      await _authService!.SignIn(_emailController.text, _passwordController.text)
          .then((_) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      });
    } else {
      print('error Screen');
    }
  }
}
