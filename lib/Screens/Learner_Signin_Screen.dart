import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/DashboardScreen.dart';
import 'package:seniors_go_digital/Screens/JoinScreen.dart';
import 'package:seniors_go_digital/Screens/Services/Bank.dart';
import 'package:seniors_go_digital/Screens/Services/Lawyer.dart';
import 'package:seniors_go_digital/Screens/Services/Teacher.dart';

import 'Senior_Signin_Screen.dart';

class Learner_Signin_Screen extends StatefulWidget {
  const Learner_Signin_Screen({Key? key}) : super(key: key);

  @override
  State<Learner_Signin_Screen> createState() => _Learner_Signin_ScreenState();
}

class _Learner_Signin_ScreenState extends State<Learner_Signin_Screen> {
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
                  height: MediaQuery.of(context).size.height*0.44 ,
                  width: MediaQuery.of(context).size.width*0.99 ,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              // Text
              Padding(
                padding: const EdgeInsets.only(left: 24, ),
                child: Row(
                  children: [
                    Text('Choose the services you \n are interested: ', style: TextStyle(color: Color(0xff175586), fontSize: 24, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),

              //spacing
              SizedBox(height: 40,),

              //cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher(),

                      ) );
                    },
                    child: Container(
                      margin:EdgeInsets.only(left:20, bottom: 11),
                      height: MediaQuery.of(context).size.height*0.11 ,
                      width: MediaQuery.of(context).size.width*0.420 ,
                      child: Center(child: Text('Teacher', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),)),

                      decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage('assets/images/citizen.jpg'),
                        //   fit: BoxFit.fill,
                        // ),
                          color:Colors.blueGrey.shade400,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Lawyer(),
                      ) );
                    },
                    child: Container(
                      margin:EdgeInsets.only(right:20, bottom: 11),
                      height: MediaQuery.of(context).size.height*0.11 ,
                      width: MediaQuery.of(context).size.width*0.420 ,
                      child: Center(child: Text('Lawyer', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),)),

                      decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage('assets/images/senior.jpg'),
                        //   fit: BoxFit.fill,
                        // ),
                          color:Colors.blueGrey.shade400,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),




                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Bank(),
                      ) );
                    },
                    child: Container(
                      margin:EdgeInsets.only(left:20, bottom: 11),
                      height: MediaQuery.of(context).size.height*0.11 ,
                      width: MediaQuery.of(context).size.width* 0.420 ,
                      child: Center(child: Text('Banker', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),)),

                      decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage('assets/images/citizen.jpg'),
                        //   fit: BoxFit.fill,
                        // ),
                          color:Colors.blueGrey.shade400,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => JoinScreen(),
                      ) );
                    },
                    child: Container(
                      margin:EdgeInsets.only(right:20, bottom: 11),
                      height: MediaQuery.of(context).size.height*0.11 ,
                      width: MediaQuery.of(context).size.width*0.420 ,
                      child: Center(child: Text('Others +', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),)),

                      decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage('assets/images/senior.jpg'),
                        //   fit: BoxFit.fill,
                        // ),
                          color:Colors.blueGrey.shade400,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),




                ],
              ),


              //spacing
              SizedBox(height: 24,),

              //Continue Button
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JoinScreen(),
                    ) );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.05 ,
                    width: MediaQuery.of(context).size.height*0.25 ,
                    child: Center(child: Text('Continue', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}
