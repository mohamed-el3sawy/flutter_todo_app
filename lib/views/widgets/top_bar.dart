
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/tasks_controller.dart';
import 'custom_text.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TasksController>();
    return ListTile(
      title: const CustomText(title: 'Hello Mohamed!', color: Colors.white, size: 20, fontWeight: FontWeight.w500),
      subtitle: Obx(() {
        return CustomText(
          title: 'Today you have ${controller.length()} tasks',
          color: Colors.white, size: 15,
          fontWeight: FontWeight.w300,
        );
      }
      ),
      trailing: Image.asset('images/icon_user.png', height: 30, width: 30,)
    );
  }
}
