import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({
    Key ? key,
    required this.bannerUrlItems,
    }) : super(key: key);

    final List<String> bannerUrlItems;
    
      get itemIndex => null;// 이미지 경로 list

    @override
    Widget build(BuildContext context) {
      Size appSize = MediaQuery.of(context).size;

      return CarouselSlider.builder(// 이미지 슬라이더 위젯
        options: CarouselOptions(
          height: 160,
          autoPlay: true,// 자동 슬라이드
          viewportFraction: 1,// 화면에 1개 이미지 보이게
        ),
        itemCount: bannerUrlItems.length,
        itemBuilder: (context, index, realIndex) {
          return Stack(
            children: [
              Image.asset(
                bannerUrlItems[itemIndex],// 이미지 파일 경로
                fit: BoxFit.cover,// 이미지를 위젯 크기에 맞춤
                width: appSize.width,// 화면 너비로 맞춤
              ),
              Align(
                alignment: Alignment.bottomRight,// 우측하단으로 순번 정렬
                child: Container(
                  color: Colors.black38,//베경색
                  padding: const EdgeInsets.all(4.0),
                  // 현재 순번/ 이미지 경로 리스트 크기 보여줌
                  child: Text((itemIndex + 1).toString(),
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              )
            ],
          );
        },
        );
    }
}