import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PalindromeController extends GetxController {
  final palind = TextEditingController();

  checkPalindrome() {
    String stringToReverse = palind.text;
    String reversedString = "";
    String beforeReverse = stringToReverse;
    for (int j = stringToReverse.length - 1; j >= 0; j--) {
      reversedString += stringToReverse[j];
    }
    
    if (beforeReverse == reversedString) {
      Get.defaultDialog(
        title: 'Result',
        content: Text(
          'is Palindrome',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),

        ),
        onConfirm: () => Get.back(),
        
      );
      palind.text = '';
    } else {
      Get.defaultDialog(
        title: 'Result',
        content: Text(
          'is not Palindrome!',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),

        ),
        onConfirm: () => Get.back(),
        
      );
      palind.text = '';
    }
  }
}
