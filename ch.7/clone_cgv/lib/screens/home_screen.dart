import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key ? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    // 탭바 메뉴 아이템 리스트
    List<String> menuItems = [
      "홈",
      "이벤트",
      "무비톡",
      "패스트오더",
      "기프트샵",
      "@GCV"
    ];

    return DefaultTabController( // 탭바 컨트롤러
      length: menuItems.length, 
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "CGV",
            style: TextStyle(
              fontSize: 24,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            ),
            backgroundColor: Colors.white,

            actions: [// 앱바 아이콘 목록
            IconButton(
              icon: const Icon(Icons.airplane_ticket_outlined),
              color: Colors.red, 
              onPressed: () {  },
            ),
              IconButton(
              icon: const Icon(Icons.airplane_ticket_outlined),
              color: Colors.red, 
              onPressed: () {  },
            ),
              IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.red, 
              onPressed: () {  },
            ),
            ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0), // 하위 위젯 높이 40으로 설정
            child: Container(
              color: Colors.red,
              child: TabBar(// 아래에 각각의 탭 생성
                tabs: List.generate(
                  menuItems.length,
                  (index) => 
                  Tab(
                    text: menuItems[index],
                  )
                  ),
                  unselectedLabelColor: Colors.white, // 선택되지 않은 탭 색상
                  labelColor: Colors.white,// 기본 색상
                  indicatorColor: Colors.white,// 라벨 밑 인디케이터 색상
                  indicatorSize: TabBarIndicatorSize.label,// 인디케이터 크기가 라벨 크기되게
                  isScrollable: true,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("홈"),
            ),
            Center(
              child: Text("이벤트"),
            ),
            Center(
              child: Text("무비톡"),
            ),
            Center(
              child: Text("패스트오더"),
            ),
            Center(
              child: Text("기프트샵"),
            ),
            Center(
              child: Text("@gcv"),
            ),                        
        ]),
        )
      );
  }
}