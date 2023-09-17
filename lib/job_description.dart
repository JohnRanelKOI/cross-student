import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDescriptionPage extends StatefulWidget {
  const JobDescriptionPage({super.key});

  @override
  State<JobDescriptionPage> createState() => _JobDescriptionPage();
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

class _JobDescriptionPage extends State<JobDescriptionPage> {
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
                    child:  Center(child: Text('Job Details', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))))
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 90.0,
                      width: 400,
                      child: SizedBox(
                        height: 160,
                        width: 400,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color.fromARGB(255, 255, 169, 169),
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
                              child: MaterialButton(
                                height: 120,
                                onPressed: () {},
                                color: Colors.red,
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 60,
                                ),
                                padding: EdgeInsets.all(10),
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                          Text('Software Developer', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                            child: SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.corporate_fare, size: 18),
                                      Text(' Youtube', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_city, size: 18),
                                      Text(' Sydney, NSW', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.event, size: 18),
                                      Text('16 Sept, 2023', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
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
                              Icons.payments_outlined,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: Text('Salary', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[800], fontSize: 12, decorationColor: Colors.grey[700]))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                            child: Text('\$40k - \$45k', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                              Icons.cases_outlined,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: Text('Job type', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[800], fontSize: 12, decorationColor: Colors.grey[700]))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                            child: Text('Part Time', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                              Icons.switch_account_outlined,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: Text('Positiion', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[800], fontSize: 12, decorationColor: Colors.grey[700]))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                            child: Text('Junior', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                            height: 400,
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
                                child: Text("Youtube is a cutting-edge technology company committed to delivering innovative solutions to our clients. We're looking for a talented and motivated Software Developer to join our dynamic team and contribute to our mission of creating exceptional software products. \n\n As a Software Developer at Youtube, you will be an integral part of our software development team, working on exciting projects that push the boundaries of technology. You will collaborate with cross-functional teams to design, develop, and maintain software solutions that meet our clients' needs and exceed their expectations.", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          });
        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[400],
        shape: const CircleBorder(),
        child: const Icon(Icons.navigation),
      ),
    );
  }
}