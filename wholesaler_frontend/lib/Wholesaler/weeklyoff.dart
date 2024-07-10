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


class WeeklyOffScreen extends StatefulWidget {
  @override
  _WeeklyOffScreenState createState() => _WeeklyOffScreenState();
}

class _WeeklyOffScreenState extends State<WeeklyOffScreen> {
  int _currentIndex=0;
  String selectedDay = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weekly Off'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Week do you keep Your shop closed?',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Image.asset(
                    'assets/img.png', // Path to your shop logo image
                    width: 150,
                    height: 100,
                    // Adjust width and height as needed
                  ),
                ],
              ),
              SizedBox(height: 80),
              Text(
                'My shop is open on all Days.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity, // Set the width to fill the available space
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio<String>(
                        value: 'Open Every Day',
                        groupValue: selectedDay,
                        onChanged: (value) {
                          setState(() {
                            selectedDay = value!;
                          });
                        },
                      ),
                      Text('Open Every Day'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: selectedDay == 'Open Every Day' ? Colors.lightGreen : null,
                  ),
                ),
              ),
        
              SizedBox(height: 80),
              Text(
                'My shop is closed every:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 50),
              Wrap(
                spacing: 100,
                children: [
                  for (var day in ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'])
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio<String>(
                              value: day,
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value!;
                                });
                              },
                            ),
                            Text(day),
                          ],
                        ),
                      ],
                    ),
                ],
              ),
        
              SizedBox(height: 100),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement save functionality
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    minimumSize: Size(double.infinity, 30),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '',
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });

          switch (index) {
            case 0:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Dashboard(),
              ));
              break;
            case 1:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyAuction(),
              ));
              break;
            case 2:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyProduct(),
              ));
              break;
            case 3:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ));
              break;
          }
        },
      ),
    );
  }
}
