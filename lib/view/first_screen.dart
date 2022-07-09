import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:kmtest_suitemedia/controller/palindrome_controller.dart';
import 'package:kmtest_suitemedia/controller/user_controller.dart';
import 'package:kmtest_suitemedia/view/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  final PalindromeController c = Get.put(PalindromeController());
  final UserController userC = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(
                  'assets/img/bg.png',
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 116,
                    height: 116,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/avatar.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      controller: userC.nameC,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Name',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      controller: c.palind,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Palindrome',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  InkWell(
                    enableFeedback: true,
                    onTap: () => c.checkPalindrome(),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff2B637B),
                      ),
                      child: Center(
                        child: Text('CHECK', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    enableFeedback: true,
                    onTap: () => Get.to( SecondScreen()),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff2B637B),
                      ),
                      child: Center(
                        child: Text('NEXT', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
