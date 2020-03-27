import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Employees {
  final String id;
  @JsonKey(name: 'employee_name')
  final String employeeName;
  @JsonKey(name: 'employee_salary')
  final String employeeSalary;
  @JsonKey(name: 'employee_age')
  final String employeeAge;
  @JsonKey(name: 'profile_image')
  final String profileImage;

  Employees({this.id, this.employeeName, this.employeeSalary, this.employeeAge, this.profileImage});

  factory Employees.fromJson(Map<String, dynamic> json) => _$EmployeesFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeesToJson(this);
}