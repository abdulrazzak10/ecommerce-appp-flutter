// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quick_mart/widget/dot.dart';
import 'package:quick_mart/screens/auth/signup.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;

          return SafeArea(
            child: Stack(
              children: [
                // Background Container with Image
                Positioned(
                  top: screenHeight * 0.05, // Adjust based on screen height
                  left: (screenWidth - (screenWidth * 0.8)) /
                      2, // Center horizontally
                  child: Container(
                    width: screenWidth * 0.8, // Responsive width
                    height: screenHeight * 0.5, // Responsive height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the border radius as needed
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/on3.png'), // Replace with your image path
                        // Adjust as needed
                      ),
                    ),
                    // child: Align(
                    //   alignment: Alignment.topLeft,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(16.0), // Padding for the arrow icon
                    //     child: Icon(
                    //       Icons.arrow_back, // Replace with your arrow icon
                    //       color: Colors.white,
                    //       size: 30,
                    //     ),
                    //   ),
                    // ),
                  ),
                ),

                // Text Below the Image
                Positioned(
                  top: screenHeight * 0.55, // Adjust based on screen height
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Safe and secure payments', // Your text here
                        style: TextStyle(
                          fontFamily: 'NerkoOne',
                          color: Colors.black,
                          fontSize: screenWidth * 0.07, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          height: screenHeight *
                              0.02), // Space between text elements
                      Text(
                        'QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.03, // Responsive font size
                        ),
                      ),
                    ],
                  ),
                ),

                // Next Button
                Positioned(
                  bottom: 63, // Adjust based on screen height
                  left: 20,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Signup(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.transparent, // Transparent background
                      side: BorderSide(
                        color: Colors.grey,
                        width: 1, // Border color and width
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02,
                        horizontal: screenWidth * 0.1,
                      ), // Responsive padding
                      minimumSize: Size(double.infinity,
                          screenHeight * 0.07), // Minimum width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            12), // Border radius for the button
                      ),
                      elevation: 0, // Remove elevation
                      shadowColor: Colors.transparent, // Remove any shadow
                      foregroundColor: Colors
                          .transparent, // Set text color to grey to match border
                    ),
                    child: Text(
                      'Get Started ',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05, // Responsive font size
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),

                // Progress Indicator
                Positioned(
                  bottom: screenHeight * 0.05, // Adjust based on screen height
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Dot(isActive: false), // Change based on the current step
                      Dot(isActive: false),
                      Dot(isActive: true),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}