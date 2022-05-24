import 'package:untitled7/tabs/widget/appointmentCard.dart';
import 'package:untitled7/tabs/widget/searchInput_button.dart';

import 'package:untitled7/tabs/widget/userIntro.dart';
import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/tabs/tab/scheduleTab.dart';
import 'package:untitled7/page/home.dart';

class HomeTab extends StatelessWidget  {

  const HomeTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const UserIntro(),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
            ),
            AppointmentCard(
              onTap: (){}
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}





