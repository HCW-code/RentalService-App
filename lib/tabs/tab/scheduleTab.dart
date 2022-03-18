import 'package:untitled7/utils/colors.dart';
import 'package:untitled7/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/tabs/widget/searchInput.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ScheduleTab extends StatefulWidget {
  const ScheduleTab({Key? key}) : super(key: key);

  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'http://192.168.219.157:3000',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Text(
      //         'kakao map web view',
      //         textAlign: TextAlign.center,
      //         style: kTitleStyle,
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       const SearchInput(),
      //     ],
      //   ),
      // ),
    );
  }
}

