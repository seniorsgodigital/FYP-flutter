import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/GetStartedOld.dart';

import 'GetStartedScreen.dart';

class AccountCreatedScreen extends StatefulWidget {
  const AccountCreatedScreen({Key? key}) : super(key: key);

  @override
  State<AccountCreatedScreen> createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen> {
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
            Center(
              child: Container(
                // margin: EdgeInsets.only(top:0, bottom:5),
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: MediaQuery.of(context).size.height*0.2 ,
                width: MediaQuery.of(context).size.width*0.4 ,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/accountCreated.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('Account Created \n   Successfully!', style: TextStyle(color: Colors.blue.shade900, fontSize: 26, fontWeight: FontWeight.w800),),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text('Congratulations. You are now a part of Senior Go Digital!', style: TextStyle(color: Colors.blue.shade900, fontSize: 14, fontWeight: FontWeight.w800),),
            ),

            Padding(
              padding: const EdgeInsets.only(top:90),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedScreen(),
                  ) );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.05 ,
                  padding: EdgeInsets.only(left: 50, right: 50, top: 8),
                  //margin: EdgeInsets.only(left: 55, right: 35, top: 5, bottom: 10),
                  child: Text('Next', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xff2457D7),
                  ),
                ),
              ),
            ),
      ],
    ),
    );
  }
}
