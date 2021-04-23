import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snapchat_clone_ui/custom_widgets/custom_widgets.dart';

const FaIcon hiddenEye = FaIcon(FontAwesomeIcons.eyeSlash);
const FaIcon eye = FaIcon(FontAwesomeIcons.eye);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  Widget eyeStatus = hiddenEye;

  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == false){
        eyeStatus = eye;
      } else{
        eyeStatus = hiddenEye;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                CustomSnapTextField(
                  label: "USERNAME OR EMAIL",
                  isPasswordField: false,
                  autoFocus: true,
                ),
                SizedBox(height: 20,),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "PASSWORD",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF51B5E5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    obscureText: _obscureText,
                    autofocus: false,
                    cursorHeight: 33,
                    cursorWidth: 2,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: (){
                          _toggle();
                        },
                        child: eyeStatus,
                      ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.all(6)
                    ),
                    cursorColor: Color(0xFF69B77D),
                  ),
                ),
              ],
            ),
                SizedBox(height: 60,),
                //Forgot your password
                GestureDetector(
                  onTap: (){
                    //forgot your password
                  },
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF51B5E5),
                    ),
                  ),
                ),
                SizedBox(height: 90,),

                //Login button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/home_screen');
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Log in",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),

                      ),
                      alignment: Alignment.center,
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFADB6BD),
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
