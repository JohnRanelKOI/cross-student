import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterJobPage extends StatefulWidget {
  const FilterJobPage({super.key});

  @override
  State<FilterJobPage> createState() => _FilterJobPage();
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

class _FilterJobPage extends State<FilterJobPage> {
  final _formKey = GlobalKey<FormState>();
  final List<bool> _selectedEmpType = <bool>[true, false, false];
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 20;
    
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
                    child:  Center(child: Text('Filters', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))))
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
                          child: Text('Categories', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      SizedBox(
                      width: 330,
                      height: 40,
                      child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "",
                              filled: true,
                              fillColor: Colors.white
                            ),
                            style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, color: Colors.black)),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your categories';
                              }
                              return null;
                          },
                        ),
                      ),
                    ],
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
                          child: Text('Company name', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      SizedBox(
                      width: 330,
                      height: 40,
                      child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))), hintText: "",
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white)),
                            ),
                            style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, color: Colors.black)),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your description';
                              }
                              return null;
                          },
                        ),
                      ),
                    ],
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
                          child: Text('Location', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      SizedBox(
                      width: 330,
                      height: 40,
                      child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))), hintText: "",
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white)),
                            ),
                            style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, color: Colors.black)),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return 'Please enter your description';
                              }
                              return null;
                          },
                        ),
                      ),
                    ],
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
                          child: Text('Salary', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      SizedBox(
                        width: 380,
                        child: Slider(
                          value: _currentSliderValue,
                          max: 100,
                          divisions: 5,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ),
                    ],
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
                          child: Text('Job type', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      ToggleButtons(
                        direction: Axis.horizontal,
                        onPressed: (int index) {
                          setState(() {
                            // The button that is tapped is set to true, and the others to false.
                            for (int i = 0; i < _selectedEmpType.length; i++) {
                              _selectedEmpType[i] = i == index;
                            }
                          });
                        },
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        borderColor: Colors.black,
                        selectedBorderColor: Colors.blue[700],
                        selectedColor: Colors.white,
                        fillColor: Colors.blue[400],
                        color: Colors.black,
                        constraints: const BoxConstraints(
                          minHeight: 40.0,
                          minWidth: 110.0,
                        ),
                        isSelected: _selectedEmpType,
                        children: employmentType,
                      ),
                    ]
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
            ),
          ),
        ),
      )
    );
  }
}