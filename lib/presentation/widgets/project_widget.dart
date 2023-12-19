import 'package:flutter/material.dart';
import 'package:resume_builder/models/project.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              '• ',
            ),
            Text('${project.title} -',
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            Text(
              '  ${project.from} - ',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
            ),
            Text(
              project.till,
              style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
            ),
          ],
        ),
        Text(
          '  ${project.description}',
        ),
      ],
    );
  }
}
