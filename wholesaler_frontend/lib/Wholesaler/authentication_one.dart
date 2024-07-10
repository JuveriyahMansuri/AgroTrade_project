import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
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
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running task
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img.png'),
            SizedBox(
              height: 20,
            ),
            Text('EAgroTrade',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.lightGreen,fontStyle: FontStyle.italic),),
          ],
        ),
      ),
    );
  }
}





class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "To EAgroTrade",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "to access your Business,Auctions & Orders.",
                ),
              ),
            ),
            SizedBox(height: 200),
            TextField(controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                icon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 320),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String email = emailController.text.trim();
                if (email.isNotEmpty) {
                  sendOTP(email);
                } else {
                  Fluttertoast.showToast(
                    msg: 'Please enter your email',
                    toastLength: Toast.LENGTH_SHORT,
                  );
                }
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Second()),
                  );

                },
                child: Text("Get OTP"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  elevation: 5, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "By continuing, you agree to our Terms of Service and Privacy & Legal Policy",
              style: TextStyle(fontSize: 15, color: Colors.grey, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),

    );
  }

  Future<void> sendOTP(String email) async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/send-otp/'),
        body: {'email': email},
      );

      final responseData = json.decode(response.body);
      if (responseData['success']) {
        Fluttertoast.showToast(
          msg: 'OTP sent successfully',
          toastLength: Toast.LENGTH_SHORT,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Three()),
        );
      } else {
        Fluttertoast.showToast(
          msg: 'Failed to send OTP: ${responseData['message']}',
          toastLength: Toast.LENGTH_SHORT,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: 'Failed to send OTP: $e',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

}

