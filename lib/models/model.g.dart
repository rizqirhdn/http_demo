// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employees _$EmployeesFromJson(Map<String, dynamic> json) {
  return Employees(
    id: json['id'] as String,
    employeeName: json['employee_name'] as String,
    employeeSalary: json['employee_salary'] as String,
    employeeAge: json['employee_age'] as String,
    profileImage: json['profile_image'] as String,
  );
}

Map<String, dynamic> _$EmployeesToJson(Employees instance) => <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employeeName,
      'employee_salary': instance.employeeSalary,
      'employee_age': instance.employeeAge,
      'profile_image': instance.profileImage,
    };
