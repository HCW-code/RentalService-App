import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/utils/colors.dart';

class CloudFirestoreSearch extends StatefulWidget {
  @override
  _CloudFirestoreSearchState createState() => _CloudFirestoreSearchState();
}

class _CloudFirestoreSearchState extends State<CloudFirestoreSearch> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(MyColors.primary),
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top:70),
              child: StreamBuilder<QuerySnapshot>(
                stream: (name !=null)
                    ? FirebaseFirestore.instance
                    .collection("test")
                    .where("searchKeywords", arrayContains: name)
                    .snapshots()
                    : FirebaseFirestore.instance.collection("test").snapshots(),
                builder: (context, snapshot){
                  return (snapshot.connectionState == ConnectionState.waiting)
                      ? Center(child: CircularProgressIndicator())
                      :ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index){
                      DocumentSnapshot data = snapshot.data!.docs[index];
                      return Container(

                          padding: EdgeInsets.only(top:15, left: 15, right: 15),
                          child: Column(

                            children: [
                              RaisedButton(
                                color: Colors.grey[100],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                onPressed:() {
                                },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Column(
                                         crossAxisAlignment : CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(data['name'],
                                            style: TextStyle(
                                              color: Colors.black38,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                          Text(data['number'],
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 15,)),
                                          Text(data['address'],
                                              style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 15,)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          ]
                                      ),
                                    ],
                                  ),
                              ),
                            ],
                          )
                      );
                    },
                  );
                }
          ),
            ),
            Positioned(
              top: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(MyColors.bg),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Icon(
                        Icons.search,
                        color: Color(MyColors.purple02),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '매장/지역으로 검색하세요',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color(MyColors.purple01),
                              fontWeight: FontWeight.w700),
                        ),
                        cursorColor: Colors.indigoAccent,
                        onChanged: (val) {
                          setState((){
                            name = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                width: 350,
                height: 50,
              )
              ),
      ],
        ),
      ),
    );
  }
}

