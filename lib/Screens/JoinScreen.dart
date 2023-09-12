import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import 'DashboardScreen.dart';
import 'WelcomeBack_Screen.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({Key? key}) : super(key: key);

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //logo
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

          //heading
          Padding(
            padding: const EdgeInsets.only( right: 30),
            child: Text('Join Seniors Go Digital', style: TextStyle(color: Color(0xff175586),fontWeight: FontWeight.w600, fontSize: 22),),
          ),

          //text
          Padding(
            padding: const EdgeInsets.only( right: 70),
            child: Text('Join us to build or help the \n community and be a part of \n Seniors Go Digital'
              , style: TextStyle(color: Color(0xbb175586),fontWeight: FontWeight.w600, fontSize: 14),),
          ),

          //spacing
          SizedBox(height: 50,),

          //sign in with facebook
          SignInButton(
            Buttons.Facebook,
            text: "Sign up with Facebook",
            onPressed: (){},
          ),

          SizedBox(height: 5,),

          //sign in with google
          SignInButton(
            Buttons.Google,
            text: "Sign up with Google",
            onPressed: () {},
          ),

          //sign in with email
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountCreatedScreen(),
                // ) );
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.05 ,
                width: MediaQuery.of(context).size.height*0.28 ,
                //padding: EdgeInsets.only(left: 100, right: 100, top: 8),
                //margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
                child: Row(
                  children: [
                    SizedBox(width: 8,),
                    Icon(Icons.email_sharp, size: 18, color: Colors.white,),
                    SizedBox(width: 15,),
                    Center(child: Text('Sign up with Email', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),)),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.red,
                ),
              ),
            ),
          ),

          SizedBox(height: 40,),

          //Text links
          Padding(
            padding: const EdgeInsets.only(left:60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeBack_Screen(),
                      ) );
                    },
                    child: Text('Sign In',  style: TextStyle(
                      color: Color(0xff175586),
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                    ),
                    )),

                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen(),
                      ) );
                    },
                    child: Text('Skip',  style: TextStyle(
                      color: Color(0xff175586),
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                    ),
                    )),
              ],
            ),
          )


        ],
      ),
    );
  }
}
