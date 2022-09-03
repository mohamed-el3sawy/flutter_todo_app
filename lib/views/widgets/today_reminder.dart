import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_text.dart';

class TodayReminder extends StatelessWidget {
  const TodayReminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 0, bottom: 16, right: 16),
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        decoration: BoxDecoration(
          gradient: kGradientContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(title: 'Today Reminder', color: Colors.white, size: 22.2, fontWeight: FontWeight.w700),
                SizedBox(height: 16,),
                CustomText(title: 'Meeting with clint', size: 16, color: Colors.white, fontWeight: FontWeight.w500),
                SizedBox(height: 8,),
                CustomText(title: '18:30 PM', size: 16, color: Colors.white,fontWeight: FontWeight.w500 ),
              ],
            ),
            Image.asset('images/golden_bell_icon.png', height: height*.13,)
          ],
        ),
      ),
    );
  }
}
