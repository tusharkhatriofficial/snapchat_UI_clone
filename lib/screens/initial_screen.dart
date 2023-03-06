import 'package:flutter/material.dart';
import 'package:snapchat_clone_ui/custom_widgets/custom_widgets.dart';

//Constants

const Color scaffoldColor = Color(0xFFFFFC00);
const Color loginButtonColor = Colors.white;
const Color signupButtonColor = Color(0xFF0EAEFE);


class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/icon.png")
                  )
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/login_screen');
                        },
                        child: ReusableButton(
                          btnHeight: 60.0,
                          btnWidth: 130.0,
                          btnColour: loginButtonColor,
                          btnCircularRadius: 80.0,
                          btnChild: Text(
                            "Log in",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/signup_screen');
                        },
                        child: ReusableButton(
                          btnHeight: 60.0,
                          btnWidth: 130.0,
                          btnColour: signupButtonColor,
                          btnCircularRadius: 80.0,
                          btnChild: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
