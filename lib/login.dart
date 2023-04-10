import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'authbutton.dart';
import 'constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
        Image.asset('assets/login.png'),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 320),
                  Image.asset('assets/logo.png'),
                  const SizedBox(height: 20),
                  const Text(
                    'Log In To Your Account',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height:60,
                    child: TextFormField(
                      cursorColor:(primaryColor),
                      controller: emailController,
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
                      controller: passwordController,
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
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Checkbox(
                              // fillColor: MaterialStateProperty.resolveWith(primaryColor),
                              tristate: false,
                              value: true,
                              shape: const CircleBorder(),
                              activeColor: const Color.fromRGBO(255, 255, 255, 0.6),
                              onChanged: (bool? value) {  },
                            ),
                            const Text(
                              "Remember me ",
                              style: TextStyle(color: Colors.white, fontSize: 13),
                              textAlign: TextAlign.start,),
                          ],
                        ),
                        const Expanded(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                            textAlign: TextAlign.end, ),
                        ),
                      ]),
                  const SizedBox(height: 5),
                  AuthButton(title: 'Log In', onTap: () {}),

                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
