import 'package:flutter/material.dart';
import 'package:wholesaler/Wholesaler/addproduct.dart';
import 'package:wholesaler/Wholesaler/authentication_one.dart';
import 'package:wholesaler/Wholesaler/authentication_two.dart';
import 'package:wholesaler/Wholesaler/authentication_three.dart';
import 'package:wholesaler/Wholesaler/dashboard.dart';
import 'package:wholesaler/Wholesaler/myproduct.dart';
import 'package:wholesaler/Wholesaler/notification.dart';
import 'package:wholesaler/Wholesaler/addauction.dart';
import 'package:wholesaler/Wholesaler/auctioncomplete.dart';
import 'package:wholesaler/Wholesaler/bids.dart';
import 'package:wholesaler/Wholesaler/myauction.dart';
import 'package:wholesaler/Wholesaler/notifyretailer.dart';
import 'package:wholesaler/Wholesaler/order.dart';
import 'package:wholesaler/Wholesaler/orderstatus.dart';
import 'package:wholesaler/Wholesaler/payment.dart';
import 'package:wholesaler/Wholesaler/documents.dart';
import 'package:wholesaler/Wholesaler/imagepicker.dart';
import 'package:wholesaler/Wholesaler/namegeneralinfo.dart';
import 'package:wholesaler/Wholesaler/oneprofile.dart';
import 'package:wholesaler/Wholesaler/profileinfo.dart';
import 'package:wholesaler/Wholesaler/mybizz.dart';
import 'package:wholesaler/Wholesaler/weeklyoff.dart';

void main() {
  runApp(MaterialApp(home: Second(),));
}

class Second extends StatefulWidget {
  Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  // It's important to define dropdownValue inside the state class so it can be updated
  String dropdownValue = 'Wholesaler';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Add SingleChildScrollView here
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Welcome to EAgroTrade',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please enter your details for a better experience.',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(labelText: 'Enter First Name'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Enter Last Name'),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text('Business Type:-', style: TextStyle(fontSize: 25)),
                  SizedBox(height: 25),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      style: TextStyle(color: Colors.black, fontSize: 25),
                      iconSize: 50,
                      items: <String>['Wholesaler', 'Retailer']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Text('Verify your OTP', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text('An SMS with 5-digit OTP was sent to '
                  'Email Id', style: TextStyle(fontSize: 15)),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when enabled
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 60,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when enabled
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 60,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when enabled
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 60,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen), // Border color when enabled
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Three()),
                  );
                },
                child: Text('Get Started', style: TextStyle(fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  elevation: 5, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

