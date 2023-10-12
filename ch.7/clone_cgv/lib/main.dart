// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // 이미지 슬라이드 패키지

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CGV Clone',
      debugShowCheckedModeBanner: false,//디버그 배너 표시 지움
      home:Scaffold(
      )
    );
  }
}