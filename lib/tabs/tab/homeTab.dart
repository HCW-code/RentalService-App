import 'package:untitled7/tabs/widget/appointmentCard.dart';
import 'package:untitled7/tabs/widget/searchInput.dart';
import 'package:untitled7/tabs/widget/userIntro.dart';
import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';


class HomeTab extends StatelessWidget {
  final void Function() onPressedScheduleCard;

  const HomeTab({
    Key? key,
    required this.onPressedScheduleCard,
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
            Container(
                child :SearchInput(),
                width: 350,
                height: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '',
                  style: kTitleStyle,
                ),
                TextButton(
                  child: Text(
                    '바로가기',
                    style: TextStyle(
                      color: Color(MyColors.yellow01),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AppointmentCard(
              onTap: onPressedScheduleCard,
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





