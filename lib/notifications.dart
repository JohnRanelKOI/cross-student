import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPage();
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

class _NotificationsPage extends State<NotificationsPage> {
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
                  padding: const EdgeInsets.only(left: 0.0, top: 53.0, right: 0.0, bottom: 30.0),
                  child:  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    color: Colors.grey[300],
                    child:  Center(child: Text('Notifications', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 330,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child: Text('New', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      SizedBox(
                        width: 380,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  height: 24,
                                  onPressed: () {},
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 24,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  shape: CircleBorder(),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Youtube ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                        Text('has posted a job', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                      ],
                                    ),
                                    Text('1h ago', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, decorationColor: Colors.white))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 380,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  height: 24,
                                  onPressed: () {},
                                  color: Colors.black,
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.apple,
                                    size: 24,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  shape: CircleBorder(),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Apple ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                        Text('has viewed your profile', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                      ],
                                    ),
                                    Text('3h ago', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, decorationColor: Colors.white))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 380,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  height: 24,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Facebook ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                        Text('has posted a job', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                      ],
                                    ),
                                    Text('8h ago', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, decorationColor: Colors.white))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child: Text('Yesterday', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      
                      SizedBox(
                        width: 380,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  height: 24,
                                  onPressed: () {},
                                  color: Colors.black,
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.apple,
                                    size: 24,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  shape: CircleBorder(),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Apple ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                        Text('has viewed your profile', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                      ],
                                    ),
                                    Text('14h ago', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, decorationColor: Colors.white))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 380,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  height: 24,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Facebook ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                        Text('has posted a job', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                      ],
                                    ),
                                    Text('21h ago', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, decorationColor: Colors.white))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 380,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  height: 24,
                                  onPressed: () {},
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 24,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  shape: CircleBorder(),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Youtube ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                        Text('has posted a job', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                                      ],
                                    ),
                                    Text('11h ago', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 12, decorationColor: Colors.white))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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