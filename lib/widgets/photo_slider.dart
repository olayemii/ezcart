import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';

class PhotoSlider extends StatefulWidget {
  final List<String> images;
  PhotoSlider({this.images});

  @override
  _PhotoSliderState createState() => _PhotoSliderState();
}

class _PhotoSliderState extends State<PhotoSlider> {
  PageController _pageViewController;
  double _currentPage = 0.0;
  @override
  void initState() {
    _pageViewController = PageController(initialPage: 0);
    _pageViewController.addListener(() {
      setState(() {
        _currentPage = _pageViewController.page;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView.builder(
          controller: _pageViewController,
          scrollDirection: Axis.horizontal,
          itemCount: widget.images.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    widget.images[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          left: 0.0,
          child: Center(
            child: DotsIndicator(
              dotsCount: widget.images.length,
              position: _currentPage,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
