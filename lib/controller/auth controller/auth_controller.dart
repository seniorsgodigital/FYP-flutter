import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:seniors_go_digital/Screens/GetStartedScreen.dart';

import '../../Screens/DashboardScreen.dart';

class AuthController extends GetxController{
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isSecure = true.obs;
  void passwordHideHandle(){
    isSecure.value = !isSecure.value;
  }

  final auth = FirebaseAuth.instance;

  void Signup() async{
    try{
      await auth.createUserWithEmailAndPassword(email: email.text, password: password.text);
      print("Account Created");
      Fluttertoast.showToast(msg: "Account Created", backgroundColor: Colors.green[600]);


    }on FirebaseAuthException catch(ex){
      if(ex.code=="weak-password"){
        print("Weak Password");
        Fluttertoast.showToast(msg: "weak password", backgroundColor: Colors.orange[400]);

      }
      else if(ex.code == "email-already-in-use"){
        print("Email already exists");
        Fluttertoast.showToast(msg: "email already exists", backgroundColor: Colors.red[600]);

      }

    }

    catch(ex)
    {
      print(ex);

    }

  }

  void login()async{
    try{
      await auth.signInWithEmailAndPassword(email: email.text, password: password.text);
      print("Logged In");
      //Fluttertoast.showToast(msg: "login successful", backgroundColor: Colors.green[600]);
      Get.offAll(GetStartedScreen());
    } on FirebaseAuthException catch (ex){
      if(ex.code == "user-not-found"){
        print("email id does not exists");
        Fluttertoast.showToast(msg: "account does not exist", backgroundColor: Colors.red[600]);
      }
      else if(ex.code == "wrong-password"){
        print("Wrong Password");
        Fluttertoast.showToast(msg: "wrong password", backgroundColor: Colors.red[600]);
      }
    }
  }

}