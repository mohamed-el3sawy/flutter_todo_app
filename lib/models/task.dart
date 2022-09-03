import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Category{
  personal,
  work,
  meeting,
  study,
}

class Task{
  final String title;
  final Category category;
  final TimeOfDay time;
  RxBool isDone = false.obs;

  Task({required this.title, required this.category, required this.time});
}