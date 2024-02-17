import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    "assets/images/caro1.jpg",
    "assets/images/caro2.jpg",
    "assets/images/caro3.jpg",
    "assets/images/caro4.jpg",
    "assets/images/caro5.jpg",
    "assets/images/caro6.jpg",
    "assets/images/caro7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: SizedBox(
          child: Column(children: [
            SingleChildScrollView(
                child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 220,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, carouselReason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imgList
                      .map((item) => Container(
                            child: Container(
                              margin: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset(item,
                                          fit: BoxFit.cover, width: 1000.0),
                                    ],
                                  )),
                            ),
                          ))
                      .toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: _current == entry.key
                          ? Container(
                              width: 30.0,
                              height: 10.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xff233975),
                              ),
                            )
                          : Container(
                              width: 10.0,
                              height: 10.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey),
                            ),
                    );
                  }).toList(),
                ),
              ],
            )),
          ]),
        ),
      ),
    );
  }
}
