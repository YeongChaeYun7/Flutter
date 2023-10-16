// 카운터 앱 분석을 통한 UI와 동작로직으로 나뉘는 프로젝트 구조 이해와 동작 흐름 이해
// 기능 버튼 추가 실습
import 'package:flutter/material.dart';// 모든 UI요소를 구글 머터리얼 스타일 위젯 사용

// 앱의 시작점. flutter에서 main()은 C에서의 main()과 기능이 동일함. 
void main() {
  runApp(const MyApp());
}
// 최상위 위젯. 
class MyApp extends StatelessWidget { //상속된 StatelessWidget은 상태 변경이 없는 위젯으로 빌드를 1번만 함
  const MyApp({super.key});

  @override// 슈퍼클래스인 StatelessWidget에 정의된 build 메소드를 재정의
  Widget build(BuildContext context) {// UI화면 제작
    return MaterialApp( //StatelessWidget에서 정의된 build 함수에 쓰인 MaterialApp은 MyApp을 통해 main()에 전달
      title: 'Flutter Demo',// 앱의 이름
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),// MyHomePage위젯을 첫 화면으로 실행
    );
  }
}

class MyHomePage extends StatefulWidget { // StatefulWidget은 상태 변경이 존재하는 위젯. 이벤트에 따라 변경되는 동적인 화면 구성
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();//상태클래스인 State객체 생성. 
  // State객체에서 대부분의 이벤트 처리 담당. 여기서 상태변경을 감지하고 콜백함수 수행
  // createState()가 State객체인 _MyHomePageState 객체 생성
}

// MyHomePage 상태 담당 클래스. 관습적으로 담당 위젯명의 앞뒤에 '_'와 'State'붙여 네이밍
// MyHomePage위젯의 상태 관리와 이벤트 처리에 필요한 콜백 함수와 화면에 위젯을 그리는 build함수 정의
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // 상태관리 변수인 카운터 저장 변수. 변경이 가능한 상태
  // Dart에서 언더바(_)로 시작하는 함수는 Private클래스를 의미한다. 변수가 생성된 클래스 내부에서만 접근, 사용, 변경 가능

  void _incrementCounter() {// 클릭이벤트를 처리하기위한 콜백 함수인 플로팅액션버튼 동적 함수
    setState(() {// State 객체가 내부 상태관리에 사용하는 함수
      _counter++;//_counter 상태변수 증가
    });
  }

  @override
  Widget build(BuildContext context) {// 화면 UI 구현 함수
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
        onPressed: _incrementCounter,// 버튼 클릭시 _incrementCounter()수행
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // 백, 메뉴 버튼을 Drawer로 설정하면 메뉴가 null이 아니거나 이번페이지로 이동 가능하면 자동으로 버튼을 생성해줌
      drawer: Drawer( // drawer는 추가한 부분으로 counter 기능과 상관없음.
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
