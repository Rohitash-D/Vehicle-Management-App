import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_management_app/common/helpers/isLoggedin.dart';
import 'package:vehicle_management_app/presentation/pages/getstartedpage/getstartedpage.dart';
import 'package:vehicle_management_app/presentation/pages/homepage/homepage.dart';
import 'package:vehicle_management_app/presentation/widgets/getstartedlogo.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});

  final FirebaseAuth auth = FirebaseAuth.instance;

  isUserLoggedIn() {
    return auth.isLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Check if user is logged in
      bool isLoggedIn =
          isUserLoggedIn(); // Replace isUserLoggedIn() with your own logic

      // Navigate to respective pages
      if (isLoggedIn) {
        // User is logged in, navigate to home page
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Homepage()));
      } else {
        // User is not logged in, navigate to login page
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const GetStartedPage()));
      }
    });

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Getstartedlogo(),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
