import 'package:flutter/material.dart';
import 'package:resume_builder/data/models/education_model.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({
    super.key,
    required this.education,
  });

  final Education education;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              '• ',
            ),
            Text('${education.college} -',
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            Text(
              '  ${education.from} - ',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
            ),
            Text(
              education.passingYear,
              style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
            ),
          ],
        ),
        Text(
          education.branch,
        ),
      ],
    );
  }
}
