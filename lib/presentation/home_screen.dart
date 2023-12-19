import 'package:flutter/material.dart';
import 'package:resume_builder/presentation/widgets/custom_button.dart';
import 'package:resume_builder/presentation/widgets/custom_textfield.dart';
import 'package:resume_builder/presentation/widgets/white_custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: Column(
          children: [
            AppBar(
              backgroundColor: const Color(0xff00AE84),
              title: const Text('CareerCraft'),
              centerTitle: true,
              titleTextStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
                color: const Color(0xff00AE84),
                height: 80,
                child: const Center(
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        'BUILD YOUR RESUME',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Create a resume in just 5 minutes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
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

class CustomTextFormWidget extends StatelessWidget {
  const CustomTextFormWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.title,
    this.maxLines = 1,
  });

  final TextEditingController textEditingController;
  final String hintText;
  final String title;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black87),
        ),
        CustomTextfield(
          controller: textEditingController,
          hintText: hintText,
          maxLines: maxLines,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
