import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume_builder/presentation/home_screen.dart';
import 'package:resume_builder/presentation/resume_screen.dart';
import 'package:resume_builder/presentation/step_four_screen.dart';
import 'package:resume_builder/presentation/step_three_screen.dart';
import 'package:resume_builder/presentation/step_two_screen.dart';

final appRoute = GoRouter(routes: [
  GoRoute(
    name: 'home-screen',
    path: '/home-screen',
    pageBuilder: (context, state) {
      return const MaterialPage(child: HomeScreen());
    },
  ),
  GoRoute(
    name: 'step-two-screen',
    path: '/step-two-screen',
    pageBuilder: (context, state) {
      return const MaterialPage(child: StepTwoScreen());
    },
  ),
  GoRoute(
    name: 'step-three-screen',
    path: '/step-three-screen',
    pageBuilder: (context, state) {
      return const MaterialPage(child: StepThreeScreen());
    },
  ),
  GoRoute(
    name: 'step-four-screen',
    path: '/step-four-screen',
    pageBuilder: (context, state) {
      return const MaterialPage(child: StepFourScreen());
    },
  ),
  GoRoute(
    name: 'resume-screen',
    path: '/',
    pageBuilder: (context, state) {
      return const MaterialPage(child: ResumeScreen());
    },
  ),
]);
