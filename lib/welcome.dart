import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes_app/signup.dart';
import 'authbutton.dart';
import 'login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003822),
      body: Stack(children: <Widget>[
        Image.asset('assets/welcome.png'),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 350),
              Image.asset('assets/logo.png'),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Ethical Eater",
                style: GoogleFonts.cabin(
                    fontSize: 35.97,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                'Track your meal consumption\nand share healthy recipes\nwith your friends',
                style: GoogleFonts.cabin(
                    fontSize: 13.59, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              AuthButton(title: 'Sign Up', onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
              }),
              const SizedBox(height: 18),
              SizedBox(
                height:60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.49),
                          side: const BorderSide(width: 2, color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Text(
                      "Log In",
                      style: GoogleFonts.cabin(
                          color: Colors.white,
                          fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
