// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PersonalDetails extends Equatable {
  final String fullName;
  final String email;
  final String contact;

  const PersonalDetails(
      {required this.fullName, required this.email, required this.contact});

  @override
  List<Object> get props => [fullName, email, contact];
}
