import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:resume_builder/data/models/education_model.dart';
import 'package:resume_builder/data/models/experience.dart';
import 'package:resume_builder/data/models/personal_details_model.dart';
import 'package:resume_builder/data/models/project.dart';

part 'resume_event.dart';
part 'resume_state.dart';

late PersonalDetails personalDetails;
List<Education> educationList = [];
List<Experience> experienceList = [];
List<Project> projectList = [];

class ResumeBloc extends Bloc<ResumeEvent, ResumeState> {
  ResumeBloc() : super(ResumeInitialS()) {
    on<AddPersonal>(addPersonalHandler);
    on<AddEducation>(addEducationHandler);
    on<AddExperience>(addExperienceHandler);
    on<AddProject>(addProjectHandler);
  }

  void addPersonalHandler(event, emit) {
    personalDetails = event.personal;
    emit(ResumeSuccessS(
        personalDetails: personalDetails,
        educationList: educationList,
        experienceList: experienceList,
        projectList: projectList));
  }

  void addEducationHandler(event, emit) {
    educationList.add(event.education);
    emit(ResumeSuccessS(
        personalDetails: personalDetails,
        educationList: educationList,
        experienceList: experienceList,
        projectList: projectList));
  }

  void addExperienceHandler(event, emit) {
    experienceList.add(event.experience);
    emit(ResumeSuccessS(
        personalDetails: personalDetails,
        educationList: educationList,
        experienceList: experienceList,
        projectList: projectList));
  }

  void addProjectHandler(event, emit) {
    projectList.add(event.project);
    emit(ResumeSuccessS(
        personalDetails: personalDetails,
        educationList: educationList,
        experienceList: experienceList,
        projectList: projectList));
  }
}
