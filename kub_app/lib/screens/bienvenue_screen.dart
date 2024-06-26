import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kub_app/screens/login_screen.dart';
import 'package:kub_app/screens/register_screen.dart';

class BienvenueScreen extends StatefulWidget {
  const BienvenueScreen({super.key});

  @override
  State<BienvenueScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BienvenueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      Positioned.fill(
          child: Image.asset(
        'assets/images/background.png',
        fit: BoxFit.cover,
      )),
      Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Kube logo_white-04.png',
                width: 168,
                height: 216,
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                'Allons-y !',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 38,
              ),
              ElevatedButton(
                  onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    minimumSize: const Size(315, 80),
                  ),
                  child: Text(
                    "S'inscrire",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  )),
              const SizedBox(
                height: 20,
              ),
              
             ElevatedButton(
                  onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()),
                      );},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    minimumSize: const Size(315, 80),
                  ),
                  child: Text(
                    "Se connecter",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  )),
                  SizedBox(height: 10,)
            
            ],
          )),
    ]));
  }
}
