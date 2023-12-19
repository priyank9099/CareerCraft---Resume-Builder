part of 'resume_bloc.dart';

sealed class ResumeState extends Equatable {
  const ResumeState();

  @override
  List<Object> get props => [];
}

final class ResumeInitialS extends ResumeState {}

final class ResumeSuccessS extends ResumeState {
  final PersonalDetails personalDetails;
  final List<Education> educationList;
  final List<Experience> experienceList;
  final List<Project> projectList;

  const ResumeSuccessS(
      {required this.personalDetails,
      required this.educationList,
      required this.experienceList,
      required this.projectList});

  @override
  List<Object> get props =>
      [personalDetails, educationList, experienceList, projectList];
}

final class ResumeErrorS extends ResumeState {
  final String errorString;

  const ResumeErrorS({required this.errorString});
  @override
  List<Object> get props => [errorString];
}
