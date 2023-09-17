import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPart2Page extends StatefulWidget {
  @override
  State<SignUpPart2Page> createState() => _SignUpPart2State();
}

class _SignUpPart2State extends State<SignUpPart2Page> {
  bool _checkboxValue = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
                  child: SizedBox(
                    width: 330,
                    child: Text('Registration', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                  )
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                                  color: Colors.lightGreen,
                                )
                            ),
                        ]
                      )
                  )
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 35),
                    child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        child: SizedBox(
                          width: 330,
                          child: Text('Contact Details', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Suburb or Town",
                              filled: true,
                              fillColor: Colors.white
                            ),
                            style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your suburb or town';
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
                              hintText: "Mobile number",
                              filled: true,
                              fillColor: Colors.white
                            ),
                            style: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your mobile number';
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
                          child: Text('Job Classification', style: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        )
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
                              hintText: "Classification",
                              filled: true,
                              fillColor: Colors.white
                            ),
                            style: const TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your job classification';
                              }
                              return null;
                            },
                          ),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        child: SizedBox(
                          width: 330,
                          child: Text('Experience Details', style: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Job title",
                              filled: true,
                              fillColor: Colors.white
                            ),
                            style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your job title';
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
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Company name",
                              filled: true,
                              fillColor: Colors.white
                            ),
                            style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your company name';
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
                            child: Row(
                              children: <Widget>[
                                  Expanded(
                                      child: SizedBox(
                                        height: 40,
                                        child: TextFormField(
                                          controller: emailController,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "Start date",
                                            filled: true,
                                            fillColor: Colors.white,
                                            suffixIcon: Icon(Icons.date_range)
                                          ),
                                          style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                                          validator: (value) {
                                            if(value == null || value.isEmpty) {
                                              return 'Please enter start date';
                                            }
                                            return null;
                                          },
                                        ),
                                      )
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                      child: SizedBox(
                                        height: 40,
                                        child: TextFormField(
                                          controller: emailController,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "End date",
                                            filled: true,
                                            fillColor: Colors.white,
                                            suffixIcon: Icon(Icons.date_range)
                                          ),
                                          style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, height: 3.0, color: Color.fromARGB(255, 102, 102, 102), fontWeight: FontWeight.w400)),
                                          validator: (value) {
                                            if(value == null || value.isEmpty) {
                                              return 'Please enter end date';
                                            }
                                            return null;
                                          },
                                        ),
                                    )
                                  ),        
                              ]
                            )
                        )
                      ),
                      ListTile(
                        title: Text('Still in role?', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        leading: Checkbox(
                          fillColor:  MaterialStateProperty.all<Color>(Colors.white),
                          checkColor: Colors.black,
                          value: _checkboxValue,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkboxValue = value!; 
                            });
                          },
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
                          
                              },
                              child: const Text('SUBMIT', style: TextStyle(color: Colors.white, fontSize: 15)),
                            ),
                          )
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}