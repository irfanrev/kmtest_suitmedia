import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kmtest_suitemedia/controller/user_controller.dart';
import 'package:kmtest_suitemedia/view/third_screen.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen({Key? key}) : super(key: key);

  final UserController c = Get.put(UserController());

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
              c.nameC.text,
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
        child: Obx(
          () => Text(
          c.name.value,
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        ),
      ));
    }

    Widget btnChooseUser() {
      return InkWell(
        onTap: () => Get.to( ThirdScreen()),
        enableFeedback: true,
        child: Container(
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
            )),
      );
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
