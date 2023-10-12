// 머터리얼 디자인과 쿠퍼티노 디자인 비교
// 머터리얼 디자인은 구조화해서 사용 가능한 반면, 쿠퍼티노 디자인은 앱바만 구조화 가능, 바디와 플로팅 액션 버튼 속성이 없어 직접 만들어야 함
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart'; // 머터리얼 디자인 적용을 위해 피키지 import
import 'package:flutter/cupertino.dart';// 쿠퍼티노 디자인 적용을 위해 피키지 import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
    { // 쿠퍼티노 디자인 적용
    return CupertinoApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  // { // 머터리얼 디자인 적용
  //   return MaterialApp(
  //     theme: ThemeData(
  //       useMaterial3: true, // 머터리얼 디자인 3 적용
  //     ),
  //     home: const MyHomePage(title: 'Flutter Demo Home Page'),
  //   );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
            navigationBar: const
            CupertinoNavigationBar(
              middle: Text('cupertino design app'),
            ),
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('material design app'),
    //   ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: CupertinoTheme.of(context)
              .textTheme
              .navLargeTitleTextStyle
            ),
            const SizedBox(height: 60.0,), 

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      Center(
        child: CupertinoButton.filled(
          onPressed: _incrementCounter, child: const Icon(CupertinoIcons.add), 
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
        ),
            ]
      ),
      )
    );
  }
}
