// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Education extends Equatable {
  final String college;
  final String branch;
  final String from;
  final String passingYear;

  const Education(
      {required this.college,
      required this.branch,
      required this.from,
      required this.passingYear});

  @override
  List<Object> get props => [college, branch, from, passingYear];
}
