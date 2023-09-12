import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:seniors_go_digital/auth/LoginScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/auth controller/auth_controller.dart';


class SignupScreen extends StatefulWidget {


  const SignupScreen({Key? key,}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
          Text('Sign up', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
              child: SingleChildScrollView(
                child: Column(
                    children: [
                        TextFormField(
                          controller: authController.name,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            // alignLabelWithHint: true,
                            label: Text('Name'),
                            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            hintText: 'Enter your name',
                            hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400,),

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff2457D7),
                                width: 3,
                              ),

                            ),
                          ),
                        ),

                      // TextFormField(
                      //
                      //     decoration: InputDecoration(
                      //       floatingLabelBehavior: FloatingLabelBehavior.always,
                      //       // alignLabelWithHint: true,
                      //       label: Text('Username'),
                      //       labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      //       hintText: 'Enter your user name',
                      //       hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400,),
                      //
                      //       enabledBorder: UnderlineInputBorder(
                      //         borderSide: BorderSide(
                      //           color: Color(0xff2457D7),
                      //           width: 3,
                      //         ),
                      //
                      //       ),
                      //     ),
                      //   ),

                       TextFormField(
                         controller: authController.email,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            // alignLabelWithHint: true,
                            label: Text('Email ID'),
                            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            hintText: 'Enter your Email ID',
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
                            hintText: 'Enter your Password',
                            hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400,),

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff2457D7),
                                width: 3,
                              ),

                            ),
                          ),
                        ),

                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       floatingLabelBehavior: FloatingLabelBehavior.always,
                      //       // alignLabelWithHint: true,
                      //       label: Text('Re-enter Password'),
                      //       labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      //       hintText: 'Re-enter your Password',
                      //       hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400,),
                      //
                      //       enabledBorder: UnderlineInputBorder(
                      //         borderSide: BorderSide(
                      //           color: Color(0xff2457D7),
                      //           width: 3,
                      //         ),
                      //
                      //       ),
                      //     ),
                      //   ),

                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       floatingLabelBehavior: FloatingLabelBehavior.always,
                      //       // alignLabelWithHint: true,
                      //       label: Text('City'),
                      //       labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      //       hintText: 'Enter your city',
                      //       hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400,),
                      //
                      //       enabledBorder: UnderlineInputBorder(
                      //         borderSide: BorderSide(
                      //           color: Color(0xff2457D7),
                      //           width: 3,
                      //         ),
                      //
                      //       ),
                      //     ),
                      //   ),





                    ],
                    ),
              )

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: InkWell(
              onTap: (){
                authController.Signup();
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.05 ,
                padding: EdgeInsets.only(left: 15, right: 15, top: 8),
                margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
                child: Text('Create Account', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff2457D7),
                ),
              ),
            ),
          ),

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
              ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text(
              'Login',
              textAlign: TextAlign.left,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xff175586),
                  fontSize: 18),
            ),
            style: ButtonStyle(),
          ),




        ],
      ),
    );
  }
}
