import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controllers/tasks_controller.dart';

import '../../models/task.dart';
import '../widgets/category_view.dart';
import '../widgets/choose_date.dart';
import '../widgets/custom_text.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final controller = Get.find<TasksController>();
    return Container(
      padding: const EdgeInsets.all(32),
      height: height*0.82,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const CustomText(title: 'Add new task', size: 18,),
          const SizedBox(height: 16,),
          TextField(
            autofocus: true,
            controller: controller.titleController.value,
            cursorColor: Colors.black,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 16,),
          const Divider(thickness: 2.2,),
          SizedBox(
            height: height*0.06,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryView(category: Category.personal),
                CategoryView(category: Category.work),
                CategoryView(category: Category.meeting),
                CategoryView(category: Category.study),
              ],
            ),
          ),
          const Divider(thickness: 2.2,),
          const SizedBox(height: 10,),
          const ChooseDate(),
          const SizedBox(height: 12,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const CustomText(title: 'Add Task', size: 20, color: Colors.white, fontWeight: FontWeight.bold),
            onPressed: () {
              Task task = Task(title: controller.titleController.value.text, category: controller.category.value, time: controller.selectedTime.value);
              controller.addTask(task);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

}
