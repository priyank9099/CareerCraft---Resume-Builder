import 'package:flutter/material.dart';
import 'package:resume_builder/presentation/home_screen.dart';
import 'package:resume_builder/presentation/widgets/custom_appbar.dart';
import 'package:resume_builder/presentation/widgets/custom_button.dart';
import 'package:resume_builder/presentation/widgets/white_custom_button.dart';

class StepThreeScreen extends StatelessWidget {
  const StepThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
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
                  textEditingController: nameController,
                  title: 'Company Name'),
              CustomTextFormWidget(
                  hintText: 'Software Engineer',
                  textEditingController: nameController,
                  title: 'Position'),
              CustomTextFormWidget(
                  hintText: '1 Year',
                  textEditingController: nameController,
                  title: 'Duration'),
              CustomTextFormWidget(
                  hintText: 'I worked on...',
                  textEditingController: nameController,
                  maxLines: 4,
                  title: 'Description'),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: WhiteCustomButton(
                        buttonTitle: 'Back',
                        icon: Icons.arrow_circle_left_outlined,
                        onPressed: () {}),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                        buttonTitle: 'Next',
                        icon: Icons.arrow_circle_right_outlined,
                        onPressed: () {}),
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
