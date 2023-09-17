import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobListPage extends StatefulWidget {
  @override
  State<JobListPage> createState() => _JobListState();
}

class _JobListState extends State<JobListPage> {
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
      body: SingleChildScrollView(
        child:
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/job_list_splash.jpg"),
                      opacity: 0.95,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SizedBox(
                    height: 283, 
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 65.0, right: 20.0),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.tune, color: Colors.white, size: 35.0, shadows: [ Shadow(color: Colors.black26, blurRadius: 2.0, offset: Offset(2.0, 2.0),), ]),
                                onPressed: null,
                              ),
                              Expanded(child: SizedBox()),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.notifications, color: Colors.white, size: 35.0, shadows: [ Shadow(color: Colors.black26, blurRadius: 2.0, offset: Offset(2.0, 2.0),), ]),
                                    onPressed: null,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage("assets/images/grayplaceholder.png"),
                                    )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text('Job Listings', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, decorationColor: Colors.white, shadows: [ Shadow(color: Colors.black26, blurRadius: 2.0, offset: Offset(2.0, 2.0),), ]))),
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                          child: SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.bottom,
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ), 
                                disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                hintText: "Search...",
                                filled: true,
                                fillColor: Colors.transparent,
                                hintStyle: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.white, fontSize: 15, decorationColor: Colors.white)),
                                prefixIcon: const Icon(Icons.search, color: Colors.white,)
                              ),
                              style: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.white, fontSize: 15, decorationColor: Colors.white)),
                              validator: (value) {
                                if(value == null || value.isEmpty) {
                                  return 'enter keywords';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text('Featured Jobs', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
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
                                          Text('IT Support', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                          Text('Part Time', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[600], fontSize: 15, decorationColor: Colors.white))),
                                          Text("\$35k - \$38k", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      MaterialButton(
                                        height: 24,
                                        onPressed: () {},
                                        color: Color.fromARGB(255, 63, 162, 218),
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
                                          Text('IT Engineer', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                          Text('Full Time', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[600], fontSize: 15, decorationColor: Colors.white))),
                                          Text("\$80k - \$100k", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
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
                                          Text('Software Developer', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                          Text('Part Time', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[600], fontSize: 15, decorationColor: Colors.white))),
                                          Text("\$40k - \$45k", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: SizedBox(
                        child: Text('Recent Jobs', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: SizedBox(
                        child: Text('see more', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
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
                                          Text('IT Support', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                          Text('Part Time', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[600], fontSize: 15, decorationColor: Colors.white))),
                                          Text("\$35k - \$38k", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
                                    child: Row(
                                      children: [
                                        Card(
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                              child: Text("Web Development", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                            ),
                                        ),
                                        Card(
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                              child: Text("Software", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      MaterialButton(
                                        height: 24,
                                        onPressed: () {},
                                        color: Color.fromARGB(255, 63, 162, 218),
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
                                          Text('IT Engineer', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                          Text('Full Time', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[600], fontSize: 15, decorationColor: Colors.white))),
                                          Text("\$80k - \$100k", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
                                    child: Row(
                                      children: [
                                        Card(
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                              child: Text("Web Development", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                            ),
                                        ),
                                        Card(
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                              child: Text("Software", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
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
                                          Text('Software Developer', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, decorationColor: Colors.white))),
                                          Text('Part Time', style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey[600], fontSize: 15, decorationColor: Colors.white))),
                                          Text("\$40k - \$45k", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
                                    child: Row(
                                      children: [
                                        Card(
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                              child: Text("Web Development", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
                                            ),
                                        ),
                                        Card(
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                              child: Text("Software", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 15, decorationColor: Colors.white))),
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
                      ),
                    ],
                  ),
                ),
              ],
            )
      ),
    );
  }
}