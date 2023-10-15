// 카운터 앱 분석을 통한 UI와 동작로직으로 나뉘는 프로젝트 구조 이해와 동작 흐름 이해
// 기능 버튼 추가 실습
import 'package:flutter/material.dart';


// 앱의 시작
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {// 상태 변경이 없는 위젯
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {// UI화면 제작
    return MaterialApp(
      title: 'Flutter Demo',// 앱바 타이틀
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// 상태 변경이 존재하는 위젯. 이벤트에 따라 변경되는 동적인 화면 구성
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// MyHomePage 상태 담당 클래스. 관습적으로 담당 위젯명의 앞뒤에 '_'와 'State'붙여 네이밍
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // 카운터 저장 변수. 보통 해당 class 바로 아래 변수 선언

  void _incrementCounter() {// 플로팅액션버튼 동적 함수
    setState(() {
      _counter++;
    });
  }

// 화면 UI 구현 함수
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),// 전달받은 파라미터를 표시
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,// 문자열을 변수로 변경
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,// 버튼 클릭시 수행되는 부분
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
