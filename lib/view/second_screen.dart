import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerTitle() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome'),
            Text(
              'John Doe',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      );
    }

    Widget selectedUsername() {
      return Expanded(
          child: Center(
        child: Text(
          'Selected User Name',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ));
    }

    Widget btnChooseUser() {
      return Container(
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff2B637B),
          ),
          child: Center(
            child: Text(
              'Choose a User',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff554AF0),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Second Screen',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerTitle(),
          selectedUsername(),
          btnChooseUser(),
        ],
      ),
    );
  }
}
