
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../../controllers/tasks_controller.dart';
import '../../models/task.dart';
import 'custom_text.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TasksController>();

    Color color;
    String title;
    switch (category){
      case Category.personal:
        color = kPersonalColor;
        title = 'Personal';
        break;
      case Category.meeting:
        color = kMeetingColor;
        title = 'Meeting';
        break;
      case Category.study:
        color = kStudyColor;
        title = 'Study';
        break;
      case Category.work:
        color = kWorkColor;
        title = 'Work';
        break;
    }

    return GestureDetector(
      onTap: (){
        controller.category.value = category;
      },
      child: Obx(()
        => Row(
          children: [
            Radio(
              onChanged: (Category? value) {
                controller.category.value = value!;
              },
              focusColor: color,
              fillColor: MaterialStateColor.resolveWith((states) => color),
              activeColor: color,
              value: category,
              groupValue: controller.category.value,
              visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            CustomText(title: ' $title', color: const Color(0xFF555555),),
            const SizedBox(width: 16,),
          ],
        ),
      ),
    );
  }
}

