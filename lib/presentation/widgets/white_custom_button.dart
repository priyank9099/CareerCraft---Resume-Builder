import 'package:flutter/material.dart';

class WhiteCustomButton extends StatelessWidget {
  const WhiteCustomButton({
    super.key,
    required this.buttonTitle,
    required this.icon,
    required this.onPressed,
  });

  final String buttonTitle;
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 233, 233, 233)),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: const Color(0xff424045),
              size: 25,
            ),
            Text(
              buttonTitle,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xff424045),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
