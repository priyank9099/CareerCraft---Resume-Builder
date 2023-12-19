import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00AE84),
        title: const Text('Resume Preview'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tejas Badone',
                  style: TextStyle(fontSize: 26),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('tejasbadone@email.com'),
                    Text('123456789'),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'EDUCATION',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                Text(
                  '• ',
                ),
                Text('MIT ABAD - ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                Text(
                  'CSE',
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '  July 2019 - ',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
                Text(
                  'Aug 2023',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'EXPERIENCE',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                Text(
                  '• ',
                ),
                Text('Flutter Developer Intern - ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                Text(
                  'Techxonic Innovations',
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '  March 2023 - ',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
                Text(
                  'May 2023',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'PROJECTS',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Text(
                  '• ',
                ),
                const Text('Flutterzon -',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                Text(
                  '  Oct 2023 - ',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
                Text(
                  'Dec 2023',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
              ],
            ),
            const Text(
              '   ▫ This is nice application',
            ),
          ],
        ),
      ),
    );
  }
}
