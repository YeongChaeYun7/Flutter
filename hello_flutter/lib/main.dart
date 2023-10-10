// flutter 실행 과정 확인
// 구글 폰트 패키지 적용
// 글자 테마 전체 적용
// app bar 테마 적용
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 화면에 보여줄 위젯 지정. main함수를 시작으로 runApp()을 실행해 프로젝트 시작 
void main() {
  runApp(const MyApp());
}

//상태변화가 없는 앱 생성. StatelessWidget클래스 상속받아 위젯으로 앱 실행
class MyApp extends StatelessWidget {
  const MyApp({super.key});// 앱에 폰트, 크기, 색상 등의 테마 적용

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // build함수에서 화면 그려짐. MaterialApp은 최상위 위젯으로 앱의 폰트, 크기, 색상 등 테마 설정 가능
      theme: ThemeData(
        textTheme: GoogleFonts.aladinTextTheme( // 글자 테마 전체 적용
          Theme.of(context).textTheme,
          ),
        primarySwatch: Colors.green,// 앱에서 사용하는 기본 색상을 green으로 설정
      ),
      home: Scaffold( // Scaffold 위젯은 appbar, title, body 속성 지정
        appBar: AppBar(
          title: Text('Welcome to Flutter',
          style: TextStyle( //앱바 타이틀의 텍스트 스타일 설정
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          actions: [ // 앱바에 아이콘 추가
            Icon(Icons.shopping_cart), // 쇼핑카트 아이콘
            SizedBox(width: 10),// 위젯 간 여백 조정
            Icon(Icons.search_rounded,
            color: Colors.redAccent,),// 검색 아이콘, 색상 변경
            SizedBox(width: 10),
            Icon(Icons.settings,
            color: Colors.purpleAccent,), // ,설정 아이콘, 색상 변경
            SizedBox(width: 10),
          ],
        ),
      body: Center(
        child: Text('Hello world',
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
          color: Colors.purple
        )
        ),
      ),
      )
    );
  }
}
