import 'package:flutter/material.dart';

import 'custom_text.dart';

class NoTasksYet extends StatelessWidget {
  const NoTasksYet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: height*.08,),
            Image.asset('images/clipboard.png'),
            const SizedBox(height: 12,),
            const CustomText(title: 'No tasks yet!', size: 24.0, fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
