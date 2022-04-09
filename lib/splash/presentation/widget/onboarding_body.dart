import 'package:e_commerce_flutter/auth/presentation/login/screen/login_screen.dart';
import 'package:e_commerce_flutter/default_button.dart';
import 'package:flutter/material.dart';

import 'content.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  _OnboardingBodyState createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Welcome to Tokoto, Let s shop!",
    },
    {
      "image": "assets/images/splash_2.png",
      "text":
      "We help people conect with store \naround United State of America",
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "We show the easy way to shop. \nJust stay at home with us",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) =>
                    Content(
                      text: splashData[index]['text'].toString(),
                      image: splashData[index]['image'].toString(),
                    ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                        'Continue',
                        18,
                        (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),),);
                        }
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color:
        currentPage == index ? Color(0xFFFF7643) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
