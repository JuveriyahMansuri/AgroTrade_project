import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
class AddProduct extends StatefulWidget {
  AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct>  {
  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;
  String dropdownValue = 'Vegetable';

  late ImagePicker _imagePicker;
  late String _imagePath;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
    _imagePath = 'assets/potato.jpeg'; // Default image path
  }

  Future<void> _pickImage() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Product",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => MyProduct(),
            ));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _pickImage();
                      },
                      child: Image.asset(
                        _imagePath,
                        width: 290,
                        height: 190,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 190,
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.edit,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Product Name',
                  hintText: 'Product Name',
                  labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Unit Of Measurement',
                  hintText: 'Unit Of Measurement',
                  labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Category:-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      items: <String>['Vegetable', 'Fruit']
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
              SizedBox(height: 20),
              TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  labelText: 'Description (Optional)',
                  hintText: 'Description (Optional)',
                  labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyProduct()),
                    );
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    onPrimary: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 160, vertical: 10),
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
