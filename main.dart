import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> images = [
    "https://static.educalingo.com/img/en/800/computer-programming.jpg",
    "https://dineroclub.net/wp-content/uploads/2019/12/DESARROLLADORDESOFTWARE.jpg",
    "https://www.leadingagile.com/wp-content/uploads/2018/09/Deliberate-Practice.jpg",
    "https://www.noavirtual.com/wp-content/uploads/2021/06/developer.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: _swiper(),
        ),
      ),
    );
  }

  Widget _swiper() {
    return Container(
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
