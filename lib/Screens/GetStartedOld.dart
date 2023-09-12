import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/BookAppointmentScreen.dart';
import 'package:seniors_go_digital/Screens/ChatbotScreen.dart';
import 'package:seniors_go_digital/Screens/DiscussionForumScreen.dart';

class GetStartedScreenOld extends StatefulWidget {
  const GetStartedScreenOld({Key? key}) : super(key: key);

  @override
  State<GetStartedScreenOld> createState() => _GetStartedScreenOldState();
}

class _GetStartedScreenOldState extends State<GetStartedScreenOld> {
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
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Text('Get started', style: TextStyle(color: Colors.blue.shade900, fontSize: 28, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
      Padding(
              padding: const EdgeInsets.only(left: 40, top: 10),
              child: Row(
                children: [
                  Text('Please Select:', style: TextStyle(color: Colors.blue.shade900, fontSize: 14, fontWeight: FontWeight.w600),),
                ],
              ),
            ),
      Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 60),
        child: InkWell(
          onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BookAppointment(),
                ) );
                },
          child: Container(

            padding: EdgeInsets.only(top:10, left: 40),
            height: 50,
            width: 300,
            child: Text('Book An Appointment', style: TextStyle(fontWeight: FontWeight.w600),),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(10),

            ),
          ),
        ),
      ),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatbotScreen(),
                  ) );
                },
                child: Container(

                  padding: EdgeInsets.only(top:10, left: 40),
                  height: 50,
                  width: 300,
                  child: Text('Chatbot', style: TextStyle(fontWeight: FontWeight.w600),),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DiscussionForumScreen(),
                  ) );
                },
                child: Container(

                  padding: EdgeInsets.only(top:10, left: 40),
                  height: 50,
                  width: 300,
                  child: Text('Discussion Forum', style: TextStyle(fontWeight: FontWeight.w600),),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ),
            ),


    ]
    )
    );
  }
}
