import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wabebe/screens/otp_verification_screen.dart';
import 'package:wabebe/widgets/text_widget.dart';

Widget loginWidget(CountryCode countryCode, Function onCountryChanged, Function onSubmit) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      textWidget(text: "Hello, nice to meet you."),
      textWidget(text: "Get going with green taxi.", fontSize: 22, fontWeight: FontWeight.bold),

      const SizedBox(
        height: 40,
      ),

      Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 3.0,
              blurRadius: 3.0,
            ),
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),

        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => onCountryChanged(),
                child: Container(
                  child: Row(
                    children: [

                      const SizedBox(width: 5.0,),

                      Expanded(
                          child: Container(
                            child: countryCode.flagImage,
                          ),
                      ),
                      
                      textWidget(text: countryCode.dialCode),

                      const SizedBox(height: 10.0,),

                      Icon(Icons.keyboard_arrow_down_rounded),


                    ],
                  ),
                ),
              ),
      ),
            Container(
                width: 1.0,
                height: 55,
                color: Colors.black.withOpacity(0.2),
              ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  onSubmitted: (String? input) => onSubmit(input),
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    hintStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
          ],
        ),

      ),

      const SizedBox(
        height: 40,
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: RichText(
          textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12.0),
              children: [
                TextSpan(
                  text: "By creating an account, you agree to our" + " ",
                ),
                TextSpan(
                  text: "Terms of service" + " ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "and" + " ",
                ),
                TextSpan(
                  text: "Privacy Policy.",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              ],
            ),
        ),
      ),

    ],
    ),
  );
}