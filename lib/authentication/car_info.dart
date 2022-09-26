import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({ Key? key }) : super(key: key);

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {

  TextEditingController couleurTextEditingController = TextEditingController();
  TextEditingController marqueTextEditingController = TextEditingController();
  TextEditingController immatriculationTextEditingController = TextEditingController();
  
  //List<String> carTypeList = ["uber-x","uber-go","bike"];
  List<String> carTypeList = ["Voiture","Moto","Tricycle"];
  String? selectedCarType;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox( 
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("images/logo1.png")),
                 const SizedBox(
                height: 10,
              ),
                Center(
                 child: Text(
                  "Enregistrer votre moyen de déplacement",
                  style: GoogleFonts.mcLaren(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
              ),
               ),
              const SizedBox(
                height: 10,
              ),

               Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0 ),
                child: TextField(
                  controller: marqueTextEditingController,
                  style: GoogleFonts.mcLaren(
                    color: Colors.grey
                  ),
                  decoration: InputDecoration(
                    labelText: "Marque",
                    labelStyle: GoogleFonts.mcLaren(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    hintText: "Quelle est la marque et le modèle de votre moyen de déplacement?",
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
                  controller: immatriculationTextEditingController,
                 // keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                  style: GoogleFonts.mcLaren(
                    color: Colors.grey
                  ),
                  decoration: InputDecoration(
                    labelText: "N° Immatriculation",
                    labelStyle: GoogleFonts.mcLaren(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    hintText: "Quelle est votre numéro d'immatriculation?",
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
                  controller: couleurTextEditingController,
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.mcLaren(
                    color: Colors.grey
                  ),
                  decoration: InputDecoration(
                    labelText: "Couleur(s)",
                    labelStyle: GoogleFonts.mcLaren(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    hintText: "Quelle est la couleur de votre voiture?",
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

              const SizedBox(height: 30,),

             /* DropdownButton<dynamic>(
                hint: Text("Mon moyen de déplacement",
                style: GoogleFonts.mcLaren(
                      fontSize: 10,
                      color: Colors.grey,
                    ),),
                value: selectedCarType,
                
               onChanged: (newValue){
                  setState(() {
                    selectedCarType = newValue.toString();
                  });
                },
                  items:carTypeList.map((car)
                {
                  return DropdownMenuItem(
                    child: Text(
                      car,
                      style:  GoogleFonts.mcLaren(
                      fontSize: 10,
                      color: Colors.grey,
                    ),),
                    value: car,);
                }).toList() , 
               ),*/

               const SizedBox(height: 50,),

               ElevatedButton(
              onPressed: ()
              {
                 // Navigator.push(context, MaterialPageRoute(builder: ((context) => const CarInfo() )));
              },
               child: const Text("Sauvegarder")
               )

            ],
          ),
        ),
      ),
    );
  }
}