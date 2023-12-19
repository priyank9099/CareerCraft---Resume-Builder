import 'package:flutter/material.dart';
import 'package:resume_builder/data/models/experience.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    super.key,
    required this.experience,
  });

  final Experience experience;

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
            Text('${experience.position} - ',
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            Text(
              ' ${experience.duration}',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
            ),
          ],
        ),
        Text(
          '  ${experience.companyName}',
        ),
      ],
    );
  }
}
