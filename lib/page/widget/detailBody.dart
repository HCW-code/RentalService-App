import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';

import 'detailDoctorCard.dart';
import 'doctorInfo.dart';
import 'doctorLocation.dart';

class DetailBody extends StatelessWidget {
  final String name;
  final String number;
  final String address;

  const DetailBody({
    Key? key,required this.name, required this.number, required this.address
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DetailDoctorCard(name:name),
          const SizedBox(
            height: 15,
          ),
          Text(
            '전화번호 :' + number,
            style: kTitleStyle,
          ),
          Text(
            address,
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