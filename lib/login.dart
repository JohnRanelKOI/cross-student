import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup1.dart';
import 'bottom_navigation.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/grayplaceholder.png"),
                    )
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
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPart1Page()),
                        );
                      },
                      child: const Text('Don’t have an account? Sign up', style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline, decorationColor: Colors.white))
                    )
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
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => BottomNavBar()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: const Text('SUBMIT', style: TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: const Text('Forgot your password?', style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline, decorationColor: Colors.white))
                  )
                ),
                const Padding(
                  padding: 
                    EdgeInsets.symmetric(horizontal: 0, vertical: 50),
                  child: SizedBox(
                    width: 330,
                    child: Row(
                        children: <Widget>[
                            Expanded(
                                child: Divider(
                                  color: Colors.white,
                                )
                            ),       
                            SizedBox(
                              width: 50,
                              child: Center(child: Text("OR", style: TextStyle(color: Colors.white)))
                            ),        
                            Expanded(
                                child: Divider(
                                  color: Colors.white,
                                )
                            ),
                        ]
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.gamepad,
                          size: 24,
                        ),
                        padding: EdgeInsets.all(10),
                        shape: CircleBorder(),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.facebook,
                          size: 24,
                        ),
                        padding: EdgeInsets.all(10),
                        shape: CircleBorder(),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.black,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.apple,
                          size: 24,
                        ),
                        padding: EdgeInsets.all(10),
                        shape: CircleBorder(),
                      )
                    ],
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