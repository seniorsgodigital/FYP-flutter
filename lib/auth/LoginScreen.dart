import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:seniors_go_digital/Screens/AccountCreatedScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:seniors_go_digital/auth/SignupScreen.dart';
import '../controller/auth controller/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              // margin: EdgeInsets.only(top:0, bottom:5),
              // padding: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height*0.25 ,
              width: MediaQuery.of(context).size.width*0.8 ,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text('Login', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),),

          SizedBox(height: 10,),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      SizedBox(height: 10,),

                      TextFormField(
                        controller: authController.email,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: Text('Email ID'),
                          labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                          hintText: 'jonny@gmail.com',
                          hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400,),

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff2457D7),
                              width: 3,
                            ),

                          ),
                        ),
                      ),

                      TextFormField(
                        obscureText: true,
                        controller: authController.password,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // alignLabelWithHint: true,
                          label: Text('Password'),
                          labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                          hintText: '********',
                          hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400,),

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff2457D7),
                              width: 3,
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                )

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 150),
            child: TextButton(
                onPressed: () {},
                child: Text('Forgot Password?',  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 12,
                  ),
                )),
          ),

          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),
                ) );
              },
              child: Text('Do not have an account? Sign up',  style: TextStyle(
                color: Color(0xff175586),
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
              )),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: InkWell(
              onTap: (){
                authController.login();
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.05 ,
                padding: EdgeInsets.only(left: 100, right: 100, top: 8),
                margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
                child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2457D7),
                ),
              ),
            ),
          ),
          Text('Or',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),),
          SignInButton(
            Buttons.Facebook,
            text: "Sign up with Facebook",
            onPressed: (){},
          ),
          SizedBox(
            height: 5,
          ),
          //Text('Or', style: TextStyle(fontWeight: FontWeight.w600),),
          SignInButton(
            Buttons.Google,
            text: "Sign up with Google",
            onPressed: () {},
          )




        ],
      ),
    );
  }
}
