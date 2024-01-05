import 'package:flutter/material.dart';
import 'package:hotel_project/pages/utilities/constain.dart';

final ButtonStyle buttonEmailLoginpage = ElevatedButton.styleFrom(
  elevation: 10,
  backgroundColor: primaryColor,
  minimumSize: const Size(360, 50),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
);

final ButtonStyle buttonEmailSignupPage = ElevatedButton.styleFrom(
  elevation: 10,
  minimumSize: const Size(360, 50),
  backgroundColor: primaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
);

final ButtonStyle buttonBooking = ElevatedButton.styleFrom(
  elevation: 3,
  minimumSize: const Size(20, 40),
  backgroundColor: secondaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
);
