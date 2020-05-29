import 'package:flash_chat/components/rounded_button_page.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation animation;
  
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration:Duration(seconds: 1),
      vsync: this
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);

    /*animation = CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate
    );*/

    controller.forward();

    /*animation.addStatusListener((status){
      // print(status);
      if (status == AnimationStatus.completed){
        controller.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed){
        controller.forward();
      }
    });*/

    controller.addListener((){
      setState(() {});
      // print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    // height: controller.value * 100,
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flat Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(title: "Log In", colour: Colors.lightBlueAccent, onPressed:() => Navigator.pushNamed(context, LoginScreen.id),),
            RoundedButton(title: "Register", colour: Colors.blueAccent, onPressed:() => Navigator.pushNamed(context, RegistrationScreen.id),),
            
          ],
        ),
      ),
    );
  }
}

