import 'dart:async';

import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/tabs/widget/searchInput_button.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled7/page/card_detail.dart';


class ScheduleTab extends StatefulWidget {
  final String store_id;
  final String lat;
  final String long;


  const ScheduleTab({
    Key? key,required this.store_id, required this.lat, required this.long
  }) : super(key: key);

  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> with AutomaticKeepAliveClientMixin {
  WebViewController? _controller;
  bool clicked = false;
  List list=["name", "name", "name", "name"];


  @override
  bool get wantKeepAlive => true;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            WebView(//웹뷰 및 통신
              //initialUrl: 'https://cstone-3dc2f.web.app/',
              initialUrl: 'https://cstone-3dc2f.web.app/',
              javascriptMode: JavascriptMode.unrestricted,

              onWebViewCreated: (WebViewController webviewController) {
                _controller = webviewController;

                Timer(Duration(milliseconds: 500), () {
                  if (_controller != null) {
                    _controller!.runJavascriptReturningResult(
                        'window.fromFlutter("${widget.store_id},${widget.lat},${widget.long}")');
                  }
                });
              },
              javascriptChannels: Set.from([
                JavascriptChannel(
                    name: 'jams',
                    onMessageReceived: (JavascriptMessage result) {
                      setState(() {
                        if(result.message=="false"|| result.message==null){
                          clicked = false;
                        }
                        else {
                          clicked = true;
                          list = result.message.split(",");
                        }
                      });
                    })
              ]),
            ),
            Positioned(// 검색 버튼
              top: 30,
              child: Container(
                child: SearchInputButton(),
                width: 350,
                height: 50,
              ),
            ),
            Visibility( //마커 클릭시 카드 생성
              visible: clicked,
              child:Positioned(
                bottom: 10,
                child: Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Card_Detail(name:list[0], number: list[2],address: list[1])
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      elevation: 4.0,
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
                                Text(list[0],
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(list[1],
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 15,)),
                                Text(list[2],
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 15,)),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ),
                  width: 350,
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

