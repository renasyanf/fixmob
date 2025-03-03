import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginscreen.dart'; // Import halaman Login

class Registerscreen extends StatefulWidget {
  @override
  _RegisterscreenState createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  bool showPassword = false;
  String? selectedInstansi; // Untuk menyimpan instansi yang dipilih

  @override
  Widget build(BuildContext context) {
    // Get the height of the screen for responsive design
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(206, 84, 44, 9), // Warna latar belakang
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Bagian Gambar Atas
              SizedBox(height: screenHeight * 0.1), // Adjust height dynamically
              Container(
                width: 315,
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/onboard2.png'), // Gambar
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              // Bagian Formulir
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(27),
                  ),
                ),
                child: Column(
                  children: [
                    // Logo
                    Container(
                      width: 100,
                      height: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/logofixmob.png'), // Logo
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    // Teks Welcome
                    Text(
                      'Create New Account',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: screenHeight * 0.025, // Responsive font size
                        color: Color.fromARGB(206, 84, 44, 9),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    // Input Email
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: screenHeight * 0.017,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(192, 79, 55, 29)),
                        borderRadius: BorderRadius.circular(27.5),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          border: InputBorder.none,
                          hintText: 'Enter Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    // Input Password
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: screenHeight * 0.017,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(206, 84, 44, 9)),
                        borderRadius: BorderRadius.circular(27.5),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          border: InputBorder.none,
                          hintText: 'Enter Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              showPassword ? Icons.visibility : Icons.visibility_off,
                              color: Color.fromARGB(206, 84, 44, 9),
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    // Input Konfirmasi Password
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Confirm Password',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: screenHeight * 0.017,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(206, 84, 44, 9)),
                        borderRadius: BorderRadius.circular(27.5),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              showPassword ? Icons.visibility : Icons.visibility_off,
                              color: Color.fromARGB(206, 84, 44, 9),
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    // Tampilkan Password
                    Row(
                      children: [
                        Checkbox(
                          value: showPassword,
                          onChanged: (bool? value) {
                            setState(() {
                              showPassword = value!;
                            });
                          },
                        ),
                        Text(
                          'Show Password',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.013,
                            color: Color(0xFF2F2F2F),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    // Pilih Instansi Dropdown
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Pilih Instansi',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: screenHeight * 0.017,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF4F1D1D)),
                        borderRadius: BorderRadius.circular(27.5),
                        color: Colors.white,
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          border: InputBorder.none,
                        ),
                        value: selectedInstansi,
                        items: [
                          DropdownMenuItem(child: Text("Pemerintah Kota Madiun"), value: "Pemerintah Kota Madiun"),
                          DropdownMenuItem(child: Text("Dinas Kesehatan Madiun"), value: "Dinas Kesehatan Madiun"),
                          DropdownMenuItem(child: Text("KOMINFO Kota Madiun"), value: "KOMINFO Kota Madiun"),
                          DropdownMenuItem(child: Text("Dinas Pendidikan dan Kebudayaan"), value: "Dinas Pendidikan dan Kebudayaan"),
                          DropdownMenuItem(child: Text("Non Instansi"), value: "Non Instansi"),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedInstansi = newValue;
                          });
                        },
                        hint: Text("Pilih Instansi"),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    // Tombol Register
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(206, 84, 44, 9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Register',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: screenHeight * 0.017,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    // Tautan untuk Login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.017,
                            color: Color(0xFF2F2F2F),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Loginscreen(), // Navigasi ke halaman login
                              ),
                            );
                          },
                          child: Text(
                            'Login Here',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: screenHeight * 0.017,
                              color: Color.fromARGB(206, 84, 44, 9),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.05), // Space at the bottom
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
