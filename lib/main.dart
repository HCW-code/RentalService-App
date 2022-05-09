import 'package:cstone/profile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // 플러터 엔진과 관련된 파이어베이스 초기화와 같은 비동기 메소드를 사용하려면
  // 먼저 플러터 코어 엔진 초기화
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Profile(),
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




