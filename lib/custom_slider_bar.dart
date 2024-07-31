import 'package:flutter/material.dart';

import 'custom_slider_contents.dart';

class CustomSliderBar extends StatefulWidget {
  const CustomSliderBar({super.key});

  @override
  State<CustomSliderBar> createState() => _CustomSliderBarState();
}

class _CustomSliderBarState extends State<CustomSliderBar> {
  bool isSlideBarOpen = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return AnimatedPositioned(
      left: isSlideBarOpen ? 0 : -screenSize.width * 0.8,
      duration: const Duration(milliseconds: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenSize.height,
            width: screenSize.width * 0.8,
            color: const Color(0xff020C73),
            child: const CustomSliderContents(),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenSize.height * 0.05),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSlideBarOpen = !isSlideBarOpen;
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff020C73),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                height: screenSize.height * 0.08,
                width: screenSize.width * 0.11,
                child: Icon(
                  isSlideBarOpen ? Icons.close : Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundSlideBarIcon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(
      size.width - 1,
      size.height / 2 - 30,
      size.width,
      size.height / 2,
    );
    path.quadraticBezierTo(
      size.width + 1,
      size.height / 2 + 30,
      15,
      size.height - 15,
    );
    path.quadraticBezierTo(
      0,
      size.height - 10,
      0,
      size.height,
    );
    path.close();
    //path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
