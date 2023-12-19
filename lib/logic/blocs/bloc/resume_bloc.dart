import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:resume_builder/models/education_model.dart';
import 'package:resume_builder/models/experience.dart';
import 'package:resume_builder/models/personal_details_model.dart';
import 'package:resume_builder/models/project.dart';

part 'resume_event.dart';
part 'resume_state.dart';

late PersonalDetails personalDetails;
List<Education> educationList = [];
List<Experience> experienceList = [];
List<Project> projectsList = [];

class ResumeBloc extends Bloc<ResumeEvent, ResumeState> {
  ResumeBloc() : super(ResumeInitialS()) {
    on<AddPersonal>(addPersonalHandler);
    on<AddEducation>(addEducationHandler);
    on<AddExperience>(addExperienceHandler);
    on<AddProject>(addProjectHandler);
  }

  void addPersonalHandler(event, emit) {
    personalDetails = event.personal;
    printbloc();
  }

  void addEducationHandler(event, emit) {
    educationList.add(event.education);
    printbloc();
  }

  void addExperienceHandler(event, emit) {
    experienceList.add(event.experience);
    printbloc();
  }

  void addProjectHandler(event, emit) {
    projectsList.add(event.project);
    printbloc();
  }

  void printbloc() {
    print(personalDetails);
    print(educationList.length);
    print(experienceList.length);
    print(projectsList.length);
  }
}
