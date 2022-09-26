import 'package:drivers_app/authentication/car_info.dart';
import 'package:drivers_app/authentication/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

   TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
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
            const Text(
              "Se connecter à un compte existant",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
       
            const SizedBox(height: 50,),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0 ),
              child: TextField(
                controller: emailTextEditingController,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  color: Colors.grey
                ),
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  hintText: "Renseignez votre adresse email",
                  hintStyle: TextStyle(
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
                style: const TextStyle(
                  color: Colors.grey
                ),
                decoration: const InputDecoration(
                  labelText: "Mot de passe",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  hintText: "Entrez le mot de passe de votre compte",
                  hintStyle: TextStyle(
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
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const CarInfo() )));
              },
               child: const Text("Se connecter")
               ),

                const SizedBox(height: 5,),
            
            TextButton(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Row(
                    children: const[
                       Text("Vous n'avez pas encore de compte?",
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                      SizedBox(width: 4,),
                         Text("S'inscrire",
                      ),
                    ],
                  ),
                ),
              ),
              onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUp() )));
              },
            )
          ],
        ),
      ),
    );
  }
}