import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup2.dart';

class SignUpPart1Page extends StatefulWidget {
  const SignUpPart1Page({super.key});

  @override
  State<SignUpPart1Page> createState() => _SignUpPart1State();
}

class _SignUpPart1State extends State<SignUpPart1Page> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 10,
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
                  child: SizedBox(
                    width: 330,
                    child: Text('Registration', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: SizedBox(
                      width: 330,
                      child: Row(
                        children: <Widget>[
                            Expanded(
                                child: Divider(
                                  thickness: 3.0,
                                  color: Colors.lightGreen,
                                )
                            ),        
                            Expanded(
                                child: Divider(
                                  thickness: 3.0,
                                  color: Colors.black,
                                )
                            ),
                        ]
                      )
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/grayplaceholder.png"),
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    child: Text('Account Details', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
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
                  child: SizedBox(
                    width: 330,
                    height: 40,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 206, 202, 202), width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(50.0))
                        ), 
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.visibility_off_outlined)
                      ),
                      style: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    height: 40,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 206, 202, 202), width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(50.0))
                        ), 
                        hintText: "Confirm Password",
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.visibility_off_outlined)
                      ),
                      style: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    child: Text('Personal Details', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "First name",
                        filled: true,
                        fillColor: Colors.white
                      ),
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    height: 40,
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Last name",
                        filled: true,
                        fillColor: Colors.white
                      ),
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    height: 40,
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Gender",
                        filled: true,
                        fillColor: Colors.white
                      ),
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter your gender';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    width: 330,
                    height: 40,
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Birth date",
                        filled: true,
                        fillColor: Colors.white
                      ),
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter your birth date';
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPart2Page()),
                          );
                        },
                        child: const Text('NEXT', style: TextStyle(color: Colors.white, fontSize: 15)),
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