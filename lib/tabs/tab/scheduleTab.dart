import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/tabs/widget/searchInput.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ScheduleTab extends StatefulWidget {
  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              initialUrl: 'http://192.168.35.231:3000/',
              javascriptMode: JavascriptMode.unrestricted,
            ),
            Positioned(
              top: 30,
              right: 25,
              child: Container(
                child: SearchInput(),
                width: 350,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

