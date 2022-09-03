
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';
import '../models/task.dart';

class TasksController extends GetxController{

  final RxList tasks = [].obs;

  int length() => tasks.length;

  void removeTask(int idx){
    tasks.removeAt(idx);
  }

  void addTask(Task task){
    tasks.add(task);
  }

  Color categoryColor(int idx){
    switch (tasks[idx].category){
      case Category.personal:
        return kPersonalColor;
      case Category.meeting:
        return kMeetingColor;
      case Category.study:
        return kStudyColor;
      case Category.work:
        return kWorkColor;
      default:
        return kPersonalColor;
    }
  }

  void changeIsDone(Task task){
    task.isDone.value = !task.isDone.value;
  }

  //add task screen
  var selectedTime = TimeOfDay.now().obs;
  final titleController = TextEditingController().obs;
  var category = Category.personal.obs;
}