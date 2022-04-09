import 'package:e_commerce_flutter/auth/presentation/widget/socal_card.dart';
import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_password_user.dart';
import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_user.dart';
import 'package:e_commerce_flutter/default_button.dart';
import 'package:e_commerce_flutter/home/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  _RegisterBodyState createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
                  height: 25,
                ),
                Text(
                  'Register Account',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Complete your details or continue\nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFiledUser(
                        'Enter your name',
                        'Name',
                        'assets/icons/User.svg',
                        TextInputType.name,
                        _nameController,
                            (value) {
                          // Todo
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFiledUser(
                        'Enter your phone',
                        'Phone',
                        'assets/icons/Phone.svg',
                        TextInputType.phone,
                        _phoneController,
                            (value) {
                          // Todo
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFiledUser(
                        'Enter your email',
                        'Email',
                        'assets/icons/Mail.svg',
                        TextInputType.emailAddress,
                        _emailController,
                            (value) {
                          // Todo
                        },
                      ),
                      SizedBox(
                        height: 15,
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
                        height: 15,
                      ),
                      TextFiledPasswordUser(
                        'Re-enter your password',
                        'Confirm Password',
                        'assets/icons/Lock.svg',
                        _confirmPasswordController,
                            (value) {
                          // Todo
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DefaultButton(
                        'Continue',
                        18,
                            () {
                          setState(() {
                            if ( _nameController.text.isNotEmpty &&
                                _phoneController.text.isNotEmpty &&
                                _emailController.text.isNotEmpty &&
                                _passwordController.text.isNotEmpty &&
                                _confirmPasswordController.text.isNotEmpty &&
                                _passwordController.text == _confirmPasswordController.text) {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),),);
                            } else {
                              print('error Screen');
                            }
                          });
                        },
                      ),
                      SizedBox(
                        height: 35,
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
                        height: 10,
                      ),
                      Text(
                        'By continuing your confirm that you agree\nwith our Term and Condition',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
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
}
