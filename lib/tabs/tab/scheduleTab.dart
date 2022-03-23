import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/tabs/widget/searchInput_button.dart';
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
          alignment: Alignment.center,
          children: [
            WebView(
              initialUrl: 'https://cstone-3dc2f.web.app/',
              javascriptMode: JavascriptMode.unrestricted,
            ),
            Positioned(
              top: 30,
              child: Container(
                child: SearchInputButton(),
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

