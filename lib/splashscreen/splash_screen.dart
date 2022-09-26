import 'dart:async';

//import 'package:drivers_app/authentication/login.dart';
import 'package:drivers_app/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import '../mainScreens/main_screen.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({ Key? key }) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 3), ()async{
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUp() )));
    } );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo1.png"),
              const SizedBox(height: 10,),
               Text("Uber & inDriver Clone App",
              style: GoogleFonts.mcLaren(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),)
            ],
          ) ),
      ),
    );
  }
}