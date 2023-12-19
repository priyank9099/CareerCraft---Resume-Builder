// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Project extends Equatable {
  final String title;
  final String description;
  final String from;
  final String till;

  const Project(
      {required this.title,
      required this.description,
      required this.from,
      required this.till});

  @override
  List<Object> get props => [title, description, from, till];
}
