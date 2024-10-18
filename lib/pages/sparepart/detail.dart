import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Center(
                child: Image.asset(
                  'assets/images/oli_helix_ultra.png', // Replace with your image asset
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 16),

              // Price and sales info
              Text(
                "Rp. 376.000",
                style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text(
                "Rp. 133.333 x 3 Bulan dengan cicilan",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey.shade600),
              ),
              SizedBox(height: 4),

              // Product Description
              Text(
                "OLI MOBIL SHELL HELIX ULTRA 5W - 30 | POUR MOTEURS DIESEL ET ESSENCE | ECT 30",
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),

              // Rating and sold count
              Row(
                children: [
                  Text(
                    "4.8",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  SizedBox(width: 8),
                  Text(
                    "134 Terjual",
                    style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Divider and Section Title
              Divider(),
              Text(
                "Top 10 Terlaris Di Oli Mobil Shell",
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.brown, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16),

              // Quantity Selector and Button
              Row(
                children: [
                  // Product thumbnail
                  Image.asset(
                    'assets/images/oli_helix_ultra.png', // Replace with your image asset
                    height: 50,
                    width: 50,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 16),

                  // Quantity Selector
                  Text("Jumlah", style: GoogleFonts.poppins(fontSize: 14)),
                  SizedBox(width: 16),

                  // Quantity decrement button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (_quantity > 1) _quantity--;
                      });
                    },
                  ),

                  // Display quantity
                  Text(
                    _quantity.toString(),
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                  ),

                  // Quantity increment button
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _quantity++;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 32),

              // Proceed Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Color(0xFF6C3A10), // Set button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Handle proceed action
                  },
                  child: Text(
                    "LANJUT",
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductDetailPage(),
  ));
}
