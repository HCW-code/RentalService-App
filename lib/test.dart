import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

class JustTest extends StatefulWidget {
  const JustTest({Key? key}) : super(key: key);

  @override
  _JustTestState createState() => _JustTestState();
}

class _JustTestState extends State<JustTest> {
  final _authentication = FirebaseAuth.instance;
  User? loggedUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser(){
    try{
      final user = _authentication.currentUser;
      if(user != null){
        loggedUser = user;
        print(loggedUser!.email);
      }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 성공 !'),
      ),
      body: Center(
        child: Text('로그인 성공 !'),
      ),
    );
  }
}
