import 'package:flutter/material.dart';
import 'package:resume_builder/presentation/home_screen.dart';
import 'package:resume_builder/presentation/widgets/custom_appbar.dart';
import 'package:resume_builder/presentation/widgets/custom_button.dart';
import 'package:resume_builder/presentation/widgets/white_custom_button.dart';

class StepTwoScreen extends StatelessWidget {
  const StepTwoScreen({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12).copyWith(top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      const Text(
                        'STEP 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        'Personal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffFBB53B),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12),
                      CustomTextFormWidget(
                          hintText: 'John Doe',
                          textEditingController: nameController,
                          title: 'Full name'),
                      CustomTextFormWidget(
                          hintText: 'johndoe@email.com',
                          textEditingController: nameController,
                          title: 'Email address'),
                      CustomTextFormWidget(
                          hintText: '1234567896',
                          textEditingController: nameController,
                          title: 'Contact number'),
                      const SizedBox(height: 16),
                    ],
                  ),
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
            )
          ],
        ),
      ),
    );
  }
}

class StepFourWidget extends StatelessWidget {
  const StepFourWidget({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              textEditingController: nameController,
              title: 'title'),
          CustomTextFormWidget(
              hintText: 'features...',
              textEditingController: nameController,
              title: 'Description'),
          CustomTextFormWidget(
              hintText: 'July 2023',
              textEditingController: nameController,
              title: 'From'),
          CustomTextFormWidget(
              hintText: 'Aug 2023',
              textEditingController: nameController,
              title: 'Till'),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
