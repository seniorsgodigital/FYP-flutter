import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/JoinScreen.dart';

class Senior_Signin_Screen extends StatefulWidget {
  const Senior_Signin_Screen({Key? key}) : super(key: key);

  @override
  State<Senior_Signin_Screen> createState() => _Senior_Signin_ScreenState();
}

class _Senior_Signin_ScreenState extends State<Senior_Signin_Screen> {
  @override
  Widget build(BuildContext context) {
    var  arrIcons= [Icon(Icons.file_copy, color: Colors.blueGrey,), Icon(Icons.email_outlined, color: Colors.blueGrey,), Icon(Icons.lightbulb_outline, color: Colors.blueGrey,)];
    var  arrTitles= ['ELEVATING PAKISTAN', 'BUILDING AN INCLUSIVE DIGITAL COMMUNITY', 'EMBRACE DAILY DISCOVERY'];
    var  arrSubtitles= ['Extend your services to the Pakistani audience, empowering them to excel on the global stage.',
      'Establish a digitally connected community embracing all ages, especially youth, to facilitate meaningful interactions and collaborations.',
      'Empower yourself with up-to-date technology tutorials and seminars, all at no cost'];
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
                  height: MediaQuery.of(context).size.height*0.35 ,
                  width: MediaQuery.of(context).size.width*0.8 ,

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
                padding: const EdgeInsets.only(left: 26, ),
                child: Row(
                  children: [
                    Text('Empowering Senior Citizens: \n Unveiling Key Feature ', style: TextStyle(color: Color(0xff175586), fontSize: 22, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),

              //spacing
              //SizedBox(height: 2,),

              //Features
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10,bottom: 8.0),
                  child: ListView.separated(itemBuilder: (context,index) {
                    return  Container(
                      //color:  Color(0xa9010D0B),
                      padding: EdgeInsets.only( bottom: 9),

                      child:  ListTile(
                        leading: arrIcons[index],
                        title:  Text(arrTitles[index], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.blueGrey),),
                        subtitle: Text(arrSubtitles[index], style: TextStyle(color: Colors.grey, fontSize: 12),),
                      ),
                    );
                  },

                    itemCount: arrTitles.length,
                    separatorBuilder: (context, index){
                      return Divider(height: 4, thickness: 1,);
                    },
                  ),
                ),
              ),



              //spacing
             // SizedBox(height: 4,),

              //Continue Button
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
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
