import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wabebe/widgets/pinput_widget.dart';
import 'package:wabebe/widgets/text_widget.dart';

Widget otpVerificationWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(text: "phone verification."),
        textWidget(text: "Enter the OTP we've sent you below.", fontSize: 22, fontWeight: FontWeight.bold),

        const SizedBox(
          height: 40,
        ),

        RoundedWithShadow(),

        const SizedBox(
          height: 40,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12.0),
              children: [
                TextSpan(
                  text: "Resend code in" + " ",
                ),
                TextSpan(
                  text: "60 seconds",
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