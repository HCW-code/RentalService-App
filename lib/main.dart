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





// buildTextField(String hintText, bool obs, int num){
//   return Form(
//     key: _formKey,
//     child: Container(
//       color: Colors.blueGrey,
//       child: TextFormField(
//           style: TextStyle(color: Colors.white,),
//           obscureText: obs ? _isObscure : false,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             hintText: hintText,
//             hintStyle: TextStyle(color: Color(0xFF263238), fontWeight: FontWeight.w500),
//             // errorStyle: TextStyle(color: Colors.yellow,),
//             fillColor: Color(0xFF546E7A),
//             filled: true,
//             border: InputBorder.none,
//             suffixIcon: obs ? IconButton(
//               onPressed: (){ setState(() { _isObscure = !_isObscure; }); },
//               icon: Icon(
//                 _isObscure ? Icons.visibility_off : Icons.visibility, color: Colors.grey,),
//             ) : null),
//           validator: (value){
//             if(value!.isEmpty) return '입력해주세요';
//             return 'FUCK OFF';
//           },
//       ),
//     ),
//   );
// }
}



