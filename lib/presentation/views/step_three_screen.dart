import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resume_builder/logic/blocs/bloc/resume_bloc.dart';
import 'package:resume_builder/models/experience.dart';
import 'package:resume_builder/presentation/views/home_screen.dart';
import 'package:resume_builder/presentation/widgets/common/custom_appbar.dart';
import 'package:resume_builder/presentation/widgets/common/custom_button.dart';
import 'package:resume_builder/presentation/widgets/common/white_custom_button.dart';

class StepThreeScreen extends StatelessWidget {
  const StepThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController companyNameController = TextEditingController();
    final TextEditingController positionController = TextEditingController();
    final TextEditingController durationController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    // ignore: no_leading_underscores_for_local_identifiers
    final _key = GlobalKey<FormState>();

    void addExperience() {
      if (_key.currentState!.validate()) {
        final experience = Experience(
            companyName: companyNameController.text,
            position: positionController.text,
            duration: durationController.text,
            description: descriptionController.text);

        context.read<ResumeBloc>().add(AddExperience(experience: experience));

        companyNameController.clear();
        positionController.clear();
        durationController.clear();
        descriptionController.clear();
      }
    }

    return Scaffold(
      appBar: CustomAppBar.customAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12).copyWith(top: 16),
          child: Column(
            children: [
              const Text(
                'STEP 3',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Experience',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffFBB53B),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              Form(
                key: _key,
                child: Column(
                  children: [
                    CustomTextFormWidget(
                        hintText: 'XYZ Innovations',
                        textEditingController: companyNameController,
                        title: 'Company Name'),
                    CustomTextFormWidget(
                        hintText: 'Software Engineer',
                        textEditingController: positionController,
                        title: 'Position'),
                    CustomTextFormWidget(
                        hintText: '1 Year',
                        textEditingController: durationController,
                        title: 'Duration'),
                    CustomTextFormWidget(
                        hintText: 'I worked on...',
                        textEditingController: descriptionController,
                        maxLines: 4,
                        title: 'Description'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 200,
                child: CustomButton(
                    buttonTitle: 'Add to resume',
                    icon: Icons.publish_rounded,
                    onPressed: () {
                      addExperience();
                    }),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: WhiteCustomButton(
                        buttonTitle: 'Back',
                        icon: Icons.arrow_circle_left_outlined,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                        buttonTitle: 'Next',
                        icon: Icons.arrow_circle_right_outlined,
                        onPressed: () {
                          if (companyNameController.text.isNotEmpty) {
                            addExperience();
                          }

                          context.pushNamed('step-four-screen');
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
