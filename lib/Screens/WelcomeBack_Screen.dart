import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class WelcomeBack_Screen extends StatefulWidget {
  const WelcomeBack_Screen({Key? key}) : super(key: key);

  @override
  State<WelcomeBack_Screen> createState() => _WelcomeBack_ScreenState();
}

class _WelcomeBack_ScreenState extends State<WelcomeBack_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              // margin: EdgeInsets.only(top:0, bottom:5),
              // padding: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height*0.28 ,
              width: MediaQuery.of(context).size.width*0.6 ,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 130),
            child: Text('Welcome Back!', style: TextStyle(color: Color(0xff175586),fontWeight: FontWeight.w600, fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 90),
            child: Text('Sign in to pick where \n you left off', style: TextStyle(color: Color(0xff175586),fontWeight: FontWeight.w600, fontSize: 18),),
          ),

          SizedBox(height: 10,),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      SizedBox(height: 10,),

                      TextFormField(
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
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountCreatedScreen(),
                // ) );
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
            text: "Sign in with Facebook",
            onPressed: (){},
          ),
          SizedBox(
            height: 5,
          ),
          //Text('Or', style: TextStyle(fontWeight: FontWeight.w600),),
          SignInButton(
            Buttons.Google,
            text: "Sign in with Google",
            onPressed: () {},
          )




        ],
      ),
    );
  }
}
