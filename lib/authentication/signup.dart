import 'package:drivers_app/authentication/car_info.dart';
import 'package:drivers_app/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  validateForm(){
    if(nameTextEditingController.text.length<3)
    {
      Fluttertoast.showToast(
        msg:"Le nom doit avoir au moins 3 caractères.",
        fontSize: 10,
        backgroundColor: Colors.blue,
        textColor: Colors.white);
    }
    if(!emailTextEditingController.text.contains('@'))
    {
      Fluttertoast.showToast(
          msg:"L'adresse mail n'est pas valide",
          fontSize: 10,
          backgroundColor: Colors.blue,
          textColor: Colors.white);
    }
    if(phoneTextEditingController.text.isEmpty)
    {
      Fluttertoast.showToast(
          msg:"Le numéro de téléphone est nécessaire",
          fontSize: 10,
          backgroundColor: Colors.blue,
          textColor: Colors.white);
    }
    if(passwordTextEditingController.text.length < 8)
    {
      Fluttertoast.showToast(
          msg:"Vous devez entrer au moins 8 caractères pour le mot de passe",
          fontSize: 10,
          backgroundColor: Colors.blue,
          textColor: Colors.white);
    }
    else Navigator.push(context, MaterialPageRoute(builder: ((context) => const CarInfo() )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.png")),
            const SizedBox(
              height: 10,
            ),
            Text(
              "S'inscrire en tant que conducteur",
              textDirection: TextDirection.ltr,
              style: GoogleFonts.mcLaren(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0 ),
              child: TextField(
                controller: nameTextEditingController,
                style: GoogleFonts.mcLaren(
                  color: Colors.grey
                ),
                decoration:  InputDecoration(
                  labelText: "Nom",
                  labelStyle: GoogleFonts.mcLaren(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  hintText: "Comment vous appelez vous?",
                  hintStyle: GoogleFonts.mcLaren(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0 ),
              child: TextField(
                controller: emailTextEditingController,
                keyboardType: TextInputType.text,
                style: GoogleFonts.mcLaren(
                  color: Colors.grey
                ),
                decoration:  InputDecoration(
                  labelText: "E-mail",
                  labelStyle: GoogleFonts.mcLaren(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  hintText: "Quelle est votre adresse email?",
                  hintStyle: GoogleFonts.mcLaren(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0 ),
              child: TextField(
                controller: phoneTextEditingController,
                keyboardType: TextInputType.phone,
                style: GoogleFonts.mcLaren(
                  color: Colors.grey
                ),
                decoration: InputDecoration(
                  labelText: "Téléphone",
                  labelStyle: GoogleFonts.mcLaren(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  hintText: "Quelle est votre numéro de téléphone?",
                  hintStyle: GoogleFonts.mcLaren(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0 ),
              child: TextField(
                controller: passwordTextEditingController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: GoogleFonts.mcLaren(
                  color: Colors.grey
                ),
                decoration: InputDecoration(
                  labelText: "Mot de passe",
                  labelStyle: GoogleFonts.mcLaren(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  hintText: "Définissez un mot de passe pour votre compte",
                  hintStyle: GoogleFonts.mcLaren(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),

             const SizedBox(
              height: 50,
            ),

            ElevatedButton(
              onPressed: ()
              {
                 validateForm();

              },
               child: Text("Créer son compte",
               style: GoogleFonts.mcLaren(),)
               ),

            const SizedBox(height: 5,),

                 TextButton(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Row(
                  children: [
                     Text("Vous avez déjà un compte?",
                    style: GoogleFonts.mcLaren(
                      color: Colors.white,
                    ),),
                    SizedBox(width: 4,),
                       Text("Se connecter",
                         style: GoogleFonts.mcLaren()
                    ),
                  ],
                ),
              ),
              onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginScreen() )));
              },
            )
          ],
        ),
      ),
    );
  }
}
