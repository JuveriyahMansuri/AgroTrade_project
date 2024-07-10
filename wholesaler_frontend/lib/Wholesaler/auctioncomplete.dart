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



class AuctionCompleted extends StatefulWidget {
  const AuctionCompleted({super.key});

  @override
  State<AuctionCompleted> createState() => _AuctionCompletedState();
}

class _AuctionCompletedState extends State<AuctionCompleted> with SingleTickerProviderStateMixin {
  int _currentIndex=0;
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      vsync: this, // vsync is set to this for performance reasons
      duration: Duration(seconds: 2), // Set the duration of the animation
    );

    // Create a Tween for the rotation angle
    _animation = Tween<double>(
      begin: 0, // Start rotation angle
      end: 2 * 3.141, // End rotation angle (2 * pi for a full circle)
    ).animate(_controller);

    // Repeat the animation indefinitely
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,),

      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 150,height:150,child:  AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  // Use Transform.rotate to rotate the Image based on the animation value
                  return Transform.rotate(
                    angle: _animation.value,
                    child: Image.asset(
                      'green_tick.jpg', // Replace with your image asset
                      width: 200,
                      height: 200,
                    ),
                  );
                },
              ),),
              SizedBox(height: 70,),
              Container(child:Text("Auction Completed!!",style:TextStyle(fontWeight: FontWeight.bold),)),
              SizedBox(height: 70,),
              Container(child:Text("Your Potato Auction is Completed & Highest price is for ₹600 won by Ronald Smith.. Let him notify!!!")),
              SizedBox(height: 70,),
              Container(
                child:SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){}, child: Text("Notify Winner"),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),foregroundColor: MaterialStateProperty.all(Colors.white)),

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
