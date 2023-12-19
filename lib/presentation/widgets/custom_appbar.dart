import 'package:flutter/material.dart';

class CustomAppBar {
  static PreferredSize customAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(140),
      child: Column(
        children: [
          AppBar(
            backgroundColor: const Color(0xff00AE84),
            title: const Text('CareerCraft'),
            centerTitle: true,
            titleTextStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
              color: const Color(0xff00AE84),
              height: 80,
              child: const Center(
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Text(
                      'BUILD YOUR RESUME',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Create a resume in just 5 minutes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
