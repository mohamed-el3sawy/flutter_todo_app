import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/tasks_controller.dart';
import 'custom_text.dart';

class TaskView extends StatelessWidget {
  const TaskView({Key? key, required this.index,}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<TasksController>();
    

    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 12),
      child: Dismissible(
        background: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Align(alignment: Alignment.centerLeft, child: Image.asset('images/trash.png')),
        ),
        secondaryBackground: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Align(alignment: Alignment.centerRight, child: Image.asset('images/trash.png')),
        ),
        key: ObjectKey(homeController.tasks[index]),
        onDismissed: (direction) {
          homeController.removeTask(index);
        },
        child: Card(
          elevation: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 6.5,
                    height: height*0.07,
                    decoration: BoxDecoration(
                        color: homeController.categoryColor(index),
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                    ),
                  ),
                  Obx(
                    ()=> Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: homeController.tasks[index].isDone.value,
                          onChanged: (val){
                            homeController.changeIsDone(homeController.tasks[index]);
                          },
                        ),
                        CustomText(title: homeController.tasks[index].time.format(context), color: Colors.black54, size: 14, decoration: homeController.tasks[index].isDone.value? TextDecoration.lineThrough:TextDecoration.none,),
                        const SizedBox(width: 16,),
                        CustomText(title: homeController.tasks[index].title, size: 18, decoration: homeController.tasks[index].isDone.value? TextDecoration.lineThrough:TextDecoration.none,),
                      ],
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.notifications, color: Colors.grey,)
              )
            ],
          ),
        ),
      ),
    );
  }
}
