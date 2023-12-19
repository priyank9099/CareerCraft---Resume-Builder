// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Experience extends Equatable {
  final String companyName;
  final String position;
  final String duration;
  final String description;

  const Experience(
      {required this.companyName,
      required this.position,
      required this.duration,
      required this.description});

  @override
  List<Object> get props => [companyName, position, duration, description];
}
