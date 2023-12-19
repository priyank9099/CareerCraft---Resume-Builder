import 'package:flutter/material.dart';
import 'package:resume_builder/presentation/home_screen.dart';
import 'package:resume_builder/presentation/widgets/custom_appbar.dart';
import 'package:resume_builder/presentation/widgets/custom_button.dart';
import 'package:resume_builder/presentation/widgets/white_custom_button.dart';

class StepFourScreen extends StatelessWidget {
  const StepFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController fromController = TextEditingController();
    final TextEditingController tillController = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar.customAppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(12).copyWith(top: 16),
        child: Column(
          children: [
            const Text(
              'STEP 4',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Projects',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffFBB53B),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            CustomTextFormWidget(
                hintText: 'E-Commerce Application',
                textEditingController: titleController,
                title: 'Title'),
            CustomTextFormWidget(
                hintText: 'Description',
                textEditingController: descriptionController,
                maxLines: 4,
                title: 'Description'),
            CustomTextFormWidget(
                hintText: 'July 2023',
                textEditingController: fromController,
                title: 'From'),
            CustomTextFormWidget(
                hintText: 'Aug 2023',
                textEditingController: tillController,
                title: 'Till'),
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
                      onPressed: () {}),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
