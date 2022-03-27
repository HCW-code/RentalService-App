import 'package:flutter/material.dart';
import 'numberCard.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        NumberCard(
          label: '방문자',
          value: '100+',
        ),
        SizedBox(width: 15),
        
        NumberCard(
          label: '후기',
          value: '4.0',
        ),
      ],
    );
  }
}