import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

const List<Widget> employmentType = <Widget>[
  Text('Part time'),
  Text('Full time'),
  Text('Remote')
];

const List<Widget> workingSchedule = <Widget>[
  Text('Day shift'),
  Text('Night shift'),
  Text('Weekday'),
  Text('Weekend')
];

const List<Widget> salaryPay = <Widget>[
  Text('Hourly'),
  Text('Weekly'),
  Text('Fortnightly')
];

class _ProfilePage extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 53.0, right: 0.0, bottom: 10.0),
                  child:  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    color: Colors.grey[300],
                    child:  Center(child: Text('Profile Details', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))))
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 90.0,
                      width: 400,
                      child: SizedBox(
                        height: 180,
                        width: 400,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color.fromARGB(255, 191, 255, 141),
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 400,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                child: SizedBox(
                                  height: 120,
                                  width: 120,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/grayplaceholder.png"),
                                  )
                                ),
                              ),
                            ),
                          ),
                          Text('John Ranel Dimaculangan', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                            child: SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(' Software Developer', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                      children: [
                          MaterialButton(
                            height: 24,
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Icon(
                              Icons.cases_outlined,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: Text('Applied Jobs', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[800], fontSize: 12, decorationColor: Colors.grey[700]))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                            child: Text('50', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                          )
                        ],
                      ),
                      Column(
                      children: [
                          MaterialButton(
                            height: 24,
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Icon(
                              Icons.visibility_outlined,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: Text('Reviewed', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[800], fontSize: 12, decorationColor: Colors.grey[700]))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                            child: Text('20', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            height: 24,
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Icon(
                              Icons.call_outlined,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: Text('Contacted', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[800], fontSize: 12, decorationColor: Colors.grey[700]))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                            child: Text('10', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            height: 24,
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Icon(
                              Icons.bookmark_outline,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: Text('Saved Jobs', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[800], fontSize: 12, decorationColor: Colors.grey[700]))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                            child: Text('10', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child:
                    Stack(
                      children: [
                        Positioned(
                          top: 0.0,
                          left: -10.0,
                          width: 400,
                          child: SizedBox(
                            height: 440,
                            width: 400,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: Colors.grey[200],
                            ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 0),
                                child: Text('Description', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
                                child: Text("Highly skilled and passionate Software Developer with 3 years of experience designing, developing, and deploying software solutions. Proficient in multiple programming languages and technologies, with a track record of delivering high-quality code on time and within budget. Adept at collaborating with cross-functional teams to turn complex requirements into innovative software products. \n\nProgramming Languages: [List languages you are proficient in, e.g., Java, Python, JavaScript, C++] \n\n Web Development: [List relevant web technologies, e.g., HTML, CSS, React, Angular]", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}