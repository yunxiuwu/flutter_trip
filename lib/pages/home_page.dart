import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 final List _imageList = [
    'http://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg',
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 160,
            child: Swiper(
              itemCount: _imageList.length,
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                  return Image.network(_imageList[index] , fit: BoxFit.fill,);
                },
              pagination: const SwiperPagination(),
              controller: SwiperController(),
            ),
          ),
        ],
      )
    );
  }
}
