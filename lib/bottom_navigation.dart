import 'package:flutter/material.dart';
import 'home.dart';
import 'job_list.dart';
import 'create_job.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(),
      JobListPage(),
      CreateJobPage()
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Job Listings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Create Job',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'My Account  $selectedIndex',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue[1000],
        onTap: (int value) => {
          setState(() => 
            selectedIndex = value,
          )
        },
      ),
    );
  }
}