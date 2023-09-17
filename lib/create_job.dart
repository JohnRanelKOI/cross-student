import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateJobPage extends StatefulWidget {
  const CreateJobPage({super.key});

  @override
  State<CreateJobPage> createState() => _CreateJobPage();
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

class _CreateJobPage extends State<CreateJobPage> {
  final _formKey = GlobalKey<FormState>();
  final List<bool> _selectedEmpType = <bool>[true, false, false];
  final List<bool> _selectedWrkSchd = <bool>[true, false, false, false];
  final List<bool> _selectedSryPay = <bool>[true, false, false];
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool _checkboxValue = false;
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
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
                    child:  Center(child: Text('Create a new job post', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
                  child: SizedBox(
                    width: 330,
                    child: Text('Job Details', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 330,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child: Row(
                            children: [
                              Text('Title ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                              Text('- Describe the position', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                            ],
                          ),
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
                                return 'Please enter your title';
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
                          child: Row(
                            children: [
                              Text('Description ', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                              Text('- provide a short description', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                      width: 330,
                      child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            maxLines: 3,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration.collapsed(
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
                          child: Text('Employment type', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
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
                  child: Column(
                    children: [
                      SizedBox(
                        width: 330,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child: Text('Working Schedule', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 330,
                            height: 40,
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "",
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white)),
                                ),
                                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, color: Colors.black)),
                                validator: (value) {
                                  if(value == null || value.isEmpty) {
                                    return 'Please enter your working schedule';
                                  }
                                  return null;
                              },
                            )
                          ),
                          ToggleButtons(
                            direction: Axis.horizontal,
                            onPressed: (int index) {
                              setState(() {
                                // The button that is tapped is set to true, and the others to false.
                                for (int i = 0; i < _selectedWrkSchd.length; i++) {
                                  _selectedWrkSchd[i] = i == index;
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
                              minWidth: 82.5,
                            ),
                            isSelected: _selectedWrkSchd,
                            children: workingSchedule,
                          ),
                        ],
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
                          child: Text('Salary', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 330,
                            height: 40,
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                controller: emailController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))), hintText: "",
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))
                                ),
                                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 15.0, color: Colors.black)),
                                validator: (value) {
                                  if(value == null || value.isEmpty) {
                                    return 'Please enter your salary';
                                  }
                                  return null;
                              },
                            )
                          ),
                          ToggleButtons(
                            direction: Axis.horizontal,
                            onPressed: (int index) {
                              setState(() {
                                // The button that is tapped is set to true, and the others to false.
                                for (int i = 0; i < _selectedSryPay.length; i++) {
                                  _selectedSryPay[i] = i == index;
                                }
                              });
                            },
                            borderColor: Colors.black,
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            selectedBorderColor: Colors.blue[700],
                            selectedColor: Colors.white,
                            fillColor: Colors.blue[400],
                            color: Colors.black,
                            constraints: const BoxConstraints(
                              minHeight: 40.0,
                              minWidth: 110.0,
                            ),
                            isSelected: _selectedSryPay,
                            children: salaryPay,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 330,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: Text('Hiring multiple candidates?', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                  ),
                ),
                SizedBox(
                  width: 380,
                  child: ListTile(
                    title: Text('Yes, I am hiring multiple candidates', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal, decorationColor: Colors.white))),
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