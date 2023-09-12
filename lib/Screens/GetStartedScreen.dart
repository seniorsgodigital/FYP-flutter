import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/DashboardScreen.dart';
import 'package:seniors_go_digital/Screens/JoinScreen.dart';
import 'package:seniors_go_digital/Screens/Learner_Signin_Screen.dart';
import 'package:seniors_go_digital/Screens/Senior_Signin_Screen.dart';
import 'package:seniors_go_digital/Screens/SeniorsDashboard.dart';
import 'package:seniors_go_digital/Screens/WelcomeBack_Screen.dart';

import '../auth/LoginScreen.dart';
import 'BookAppointmentScreen.dart';
import 'ChatbotScreen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
            children: [
              //app logo
              Center(
                child: Container(
                  // margin: EdgeInsets.only(top:0, bottom:5),
                  // padding: EdgeInsets.only(left: 20, right: 20),
                  height: MediaQuery.of(context).size.height*0.5 ,
                  width: MediaQuery.of(context).size.width*0.99 ,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 24, top: 10),
              //   child: Row(
              //     children: [
              //       Text('Empowering Seniors, Connecting Generations: \n join Seniors Go Digital Today: ', style: TextStyle(color: Color(0xff175586), fontSize: 20, fontWeight: FontWeight.w600),),
              //     ],
              //   ),
              // ),

              //spacing
              //SizedBox(height: 20,),
              // Text -> Please select
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 10),
                child: Row(
                  children: [
                    Text('Empowering Seniors, Connecting Generations: \n join Seniors Go Digital Today: ', style: TextStyle(color: Color(0xff175586), fontSize: 15, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),

              //spacing
              SizedBox(height: 40,),

              //cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children:[
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Learner_Signin_Screen(),
                          ) );
                        },
                        child: Container(
                          margin:EdgeInsets.only(left:10, bottom: 11),
                          height: MediaQuery.of(context).size.height*0.14 ,
                          width: 161.9,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/citizen.jpg'),
                                fit: BoxFit.fill,
                              ),
                              color:Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),

                      Container(
                        margin:EdgeInsets.only(top: 90, left:10, bottom: 10),
                        height: MediaQuery.of(context).size.height*0.031 ,
                        width: MediaQuery.of(context).size.width*0.4506 ,
                        //width: 161.9,
                        child: Text("Learner", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontFamily: 'Roboto-Bold'),),
                        decoration: BoxDecoration(

                            color: Color(0xbb708090),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22))
                        ),
                      ),

                    ],
                  ),

                  Stack(
                    children:[
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Senior_Signin_Screen(),
                          ) );
                        },
                        child: Container(
                          margin:EdgeInsets.only(right:10, bottom: 11),
                          height: MediaQuery.of(context).size.height*0.14 ,
                          width: 161.9,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/senior.jpg'),
                                fit: BoxFit.fill,
                              ),
                              color:Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),

                      Container(
                        margin:EdgeInsets.only(top: 90, right:9, bottom: 9),
                        height: MediaQuery.of(context).size.height*0.031,
                        width: MediaQuery.of(context).size.width*0.4506 ,

                        child: Text("Senior Citizen", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontFamily: 'Roboto-Bold'),),

                        decoration: BoxDecoration(
                            color: Color(0xbb708090),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22))
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //spacing
              SizedBox(height: 24,),

              //Text links
              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SeniorsDashboard(),
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
            ]
        )
    );
  }
}
