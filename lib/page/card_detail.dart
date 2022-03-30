import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/page/widget/detailBody.dart';

class Card_Detail extends StatefulWidget {
  final String name;
  final String number;
  final String address;

  const Card_Detail({
    Key? key,required this.name, required this.number, required this.address
  }) : super(key: key);

  @override
  _Card_Detail createState() => _Card_Detail();
}

class _Card_Detail extends State<Card_Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('매장 상세정보'),
            backgroundColor: Colors.grey,
            expandedHeight: 200,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(''),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: DetailBody(name: widget.name, number: widget.number, address: widget.address),
          )
        ],
      ),
    );
  }
}
