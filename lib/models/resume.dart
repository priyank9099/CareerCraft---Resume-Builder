// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:resume_builder/models/education_model.dart';
import 'package:resume_builder/models/experience.dart';
import 'package:resume_builder/models/personal_details_model.dart';
import 'package:resume_builder/models/project.dart';

class Resume extends Equatable {
  final PersonalDetails personalDetails;
  final List<Experience> experienceList;
  final List<Project> projectList;
  final List<Education> educationList;

  const Resume(
      {required this.personalDetails,
      required this.experienceList,
      required this.projectList,
      required this.educationList});

  @override
  List<Object> get props =>
      [personalDetails, experienceList, projectList, educationList];
}
