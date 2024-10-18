import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fixmob1/pages/service/oli.dart'; // Import your ServiceOli page
// import 'package:fixmob1/pages/service/pendingin.dart'; // Import your ServicePendingin page
// import 'package:fixmob1/pages/service/filter_bahan_bakar.dart'; // Import your FilterBahanBakar page
// import 'package:fixmob1/pages/service/tune_up.dart'; // Import your TuneUp page
// import 'package:fixmob1/pages/service/spooring.dart'; // Import your Spooring page
// import 'package:fixmob1/pages/service/understeel.dart'; // Import your Understeel page
// import 'package:fixmob1/pages/service/overhaul.dart'; // Import your Overhaul page
// import 'package:fixmob1/pages/service/ac.dart'; // Import your AirConditioner page

class Service extends StatefulWidget {
  @override
  _Service createState() => _Service();
}

class _Service extends State<Service> {
  int _selectedIndex = 0; // For the BottomNavigationBar

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Service",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black, // For icons and text color
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              // Notification action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image and description card
            Card(
              color: Color(0xFF6C3A10), // Brown background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image on the left
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/images/ac.png', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    // Text description
                    Expanded(
                      child: Text(
                        "Solusi Tepat untuk Menjaga Mobil Anda Tetap Prima dan Siap Berkendara",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // List of service buttons
            Expanded(
              child: ListView(
                children: [
                  serviceButton('Ganti Oli', ServiceOli()), // Navigate to ServiceOli
                  serviceButton('Sistem Pendingin', ServiceOli()), // Navigate to ServicePendingin
                  serviceButton('Filter Bahan Bakar', ServiceOli()), // Navigate to FilterBahanBakar
                  serviceButton('Tune Up', ServiceOli()), // Navigate to TuneUp
                  serviceButton('Spooring', ServiceOli()), // Navigate to Spooring
                  serviceButton('Understeel', ServiceOli()), // Navigate to Understeel
                  serviceButton('Overhaul', ServiceOli()), // Navigate to Overhaul
                  serviceButton('Air Conditioner', ServiceOli()), // Navigate to AirConditioner
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color.fromARGB(206, 84, 44, 9), // Selected item color
        unselectedItemColor: Colors.grey, // Unselected item color
      ),
    );
  }

  // Service Button Widget
  Widget serviceButton(String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Color(0xFF6C3A10), width: 1.5), // Brown border
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              color: Color(0xFF6C3A10), // Brown text color
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
