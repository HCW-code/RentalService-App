import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';

import 'detailDoctorCard.dart';
import 'doctorInfo.dart';
import 'doctorLocation.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DetailDoctorCard(),
          const SizedBox(
            height: 15,
          ),
          Text(
            '매장 설명',
            style: kTitleStyle,
          ),
          Text(
            '----------------매장설명--------------------------------',
            style: TextStyle(
              color: Color(MyColors.purple01),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 15,
          ),

          const DoctorInfo(),
          const SizedBox(
            height: 30,
          ),

          Text(
            'Location',
            style: kTitleStyle,
          ),
          const SizedBox(
            height: 25,
          ),
          const DoctorLocation(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}