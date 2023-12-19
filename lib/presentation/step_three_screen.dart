import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume_builder/presentation/home_screen.dart';
import 'package:resume_builder/presentation/widgets/custom_appbar.dart';
import 'package:resume_builder/presentation/widgets/custom_button.dart';
import 'package:resume_builder/presentation/widgets/white_custom_button.dart';

class StepThreeScreen extends StatelessWidget {
  const StepThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController companyNameController = TextEditingController();
    final TextEditingController positionController = TextEditingController();
    final TextEditingController durationController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
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
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 200,
                child: CustomButton(
                    buttonTitle: 'Add to resume',
                    icon: Icons.publish_rounded,
                    onPressed: () {}),
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
