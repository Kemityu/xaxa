import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kub_app/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/kub Logo_HD-04.png', width: 309, height: 309),
              const SizedBox(height: 20),
              Text("Inscrivez-vous", style: GoogleFonts.montserrat(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w700 ),),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        
                        labelText: 'Numero de téléphone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),)
                          
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Votre nom',
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),)
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Votre Prénoms',
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),)
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),)
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),)
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                       
                      },
                      child: Text('Avez-vous déjà un compte ? Se connecter', style: GoogleFonts.montserrat(color: Colors.black, fontSize: 20 , fontWeight: FontWeight.w600),),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()),
                      );
                      },
                      style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(361, 65),
                  ),
                      child: Text("CONTINUER", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
