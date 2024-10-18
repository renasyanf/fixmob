import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fixmob1/pages/registerscreen.dart'; 
import 'package:fixmob1/pages/dashboard.dart'; 

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(206, 84, 44, 9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image Section
              SizedBox(height: 80),
              Container(
                width: 315,
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/onboard2.png'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Form Section
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
                          image: AssetImage('assets/images/logofixmob.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    // Welcome Text
                    Text(
                      'Welcome to Fixmob',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromARGB(206, 84, 44, 9),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Email Input
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
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
                    SizedBox(height: 20),
                    // Password Input
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
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
                      child: TextFormField(
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          border: InputBorder.none,
                          hintText: 'Enter Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    // Show Password Checkbox
                    Row(
                      children: [
                        Checkbox(
                          value: !_obscurePassword,
                          onChanged: (bool? value) {
                            setState(() {
                              _obscurePassword = !value!;
                            });
                          },
                        ),
                        Text(
                          'Show Password',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xFF2F2F2F),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Login Button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(206, 84, 44, 9),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Register Here link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xFF2F2F2F),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registerscreen()),
                            );
                          },
                          child: Text(
                            'Register Here',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color.fromARGB(206, 84, 44, 9),
                            ),
                          ),
                        ),
                      ],
                    ),
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
