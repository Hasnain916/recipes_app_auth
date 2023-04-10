import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'authbutton.dart';
import 'constant.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  // form key
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Align(
                  alignment: Alignment(0.5, 0),
                  child: Icon(Icons.arrow_back_ios, color: (primaryColor))),
            ),
          ),
        ),
      ),
      body: Stack(children: <Widget>[
        Image.asset('assets/sign.png'),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 250),
                  Image.asset('assets/logo.png'),
                  const SizedBox(height: 10),
                  Text(
                    'Create New Account',
                    style: GoogleFonts.cabin(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),

                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height:60,
                    child: TextFormField(
                      cursorColor:(primaryColor),
                      controller: name,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(143, 255, 125, 0.2),
                        prefixIcon: const Icon(
                          Icons.person_outline_rounded,
                          color: Colors.white,
                        ),
                        hintText: 'Name',
                        hintStyle: GoogleFonts.cabin(
                          color: Colors.white,
                          fontSize: 16.49,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.49),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.49),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height:60,
                    child: TextFormField(
                      cursorColor:(primaryColor),
                      controller: email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(143, 255, 125, 0.2),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.cabin(
                          color: Colors.white,
                          fontSize: 16.49,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.49),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.49),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 60,
                    child: TextFormField(
                      cursorColor:(primaryColor),
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(143, 255, 125, 0.2),
                        prefixIcon: const Icon(
                          Icons.lock_open_rounded,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.cabin(
                          color: Colors.white,
                          fontSize: 16.49,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.49),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.49),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  AuthButton(title: 'Sign Up', onTap: () {}),
                  const SizedBox(height: 20),
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
                        },
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/google.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign Up With Google",
                              style: GoogleFonts.cabin(
                                  color: Colors.white,
                                  fontSize: 16),
                            )
                          ],
                        ) ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Already have an account? ", style: GoogleFonts.cabin(
                            color: Colors.white,
                            fontSize: 13
                        ),),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const LoginScreen()));
                          },
                          child: Text(
                            "Log In",
                            style: GoogleFonts.cabin(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        )
                      ]),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
