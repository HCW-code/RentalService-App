import 'package:flutter/material.dart';
import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/page/widget/detailBody.dart';

class SliverDoctorDetail extends StatelessWidget {
  const SliverDoctorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(


        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Detail Doctor'),
            backgroundColor: Color(MyColors.primary),
            expandedHeight: 200,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: NetworkImage('https://media.istockphoto.com/vectors/hospital-building-flat-style-on-blue-sky-vector-id973278536'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: DetailBody(),
          )
        ],
      ),
    );
  }
}