import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.jpeg"),
            opacity: 0.95,
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    child: Text('Forgot your password?', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    height: 40,
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Email",
                        filled: true,
                        fillColor: Colors.white
                      ),
                      style: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Center(
                    child: SizedBox(
                      width: 135,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 74, 124, 255)
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('SUBMIT', style: TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}