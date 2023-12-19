part of 'resume_bloc.dart';

sealed class ResumeEvent extends Equatable {
  const ResumeEvent();

  @override
  List<Object> get props => [];
}

final class AddPersonal extends ResumeEvent {
  final PersonalDetails personal;

  const AddPersonal({required this.personal});
  @override
  List<Object> get props => [personal];
}

final class AddEducation extends ResumeEvent {
  final Education education;

  const AddEducation({required this.education});
  @override
  List<Object> get props => [education];
}

final class AddExperience extends ResumeEvent {
  final Experience experience;

  const AddExperience({required this.experience});
  @override
  List<Object> get props => [experience];
}

final class AddProject extends ResumeEvent {
  final Project project;

  const AddProject({required this.project});
  @override
  List<Object> get props => [project];
}
