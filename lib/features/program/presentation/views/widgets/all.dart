import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Container(
        width: 390,
        height: 844,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
    child: Stack(
    children: [
    Positioned(
    left: 0,
    top: 0,
    child: Container(
    width: 390,
    height: 340,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: NetworkImage("https://via.placeholder.com/390x340"),
    fit: BoxFit.fill,
    ),
    ),
    ),
    ),
    Positioned(
    left: 16,
    top: 244,
    child: Opacity(
    opacity: 0.60,
    child: Container(
    width: 358,
    height: 80,
    decoration: ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    ),
    ),
    Positioned(
    left: 24,
    top: 252,
    child: Container(
    width: 64,
    height: 64,
    decoration: ShapeDecoration(
    image: DecorationImage(
    image: NetworkImage("https://via.placeholder.com/64x64"),
    fit: BoxFit.fill,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    ),
    Positioned(
    left: 24,
    top: 252,
    child: Container(
    width: 64,
    height: 64,
    decoration: ShapeDecoration(
    image: DecorationImage(
    image: NetworkImage("https://via.placeholder.com/64x64"),
    fit: BoxFit.fill,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    ),
    Positioned(
    left: 94,
    top: 252,
    child: Container(
    width: 63,
    height: 64,
    decoration: ShapeDecoration(
    image: DecorationImage(
    image: NetworkImage("https://via.placeholder.com/63x64"),
    fit: BoxFit.fill,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    ),
    Positioned(
    left: 163,
    top: 252,
    child: Container(
    width: 64,
    height: 64,
    decoration: ShapeDecoration(
    image: DecorationImage(
    image: NetworkImage("https://via.placeholder.com/64x64"),
    fit: BoxFit.fill,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    ),
    Positioned(
    left: 233,
    top: 252,
    child: Container(
    width: 63,
    height: 64,
    decoration: ShapeDecoration(
    image: DecorationImage(
    image: NetworkImage("https://via.placeholder.com/63x64"),
    fit: BoxFit.fill,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    ),
    Positioned(
    left: 304,
    top: 252,
    child: Container(
    width: 62,
    height: 64,
    child: Stack(
    children: [
    Positioned(
    left: 0,
    top: 0,
    child: Container(
    width: 62,
    height: 64,
    decoration: ShapeDecoration(
    color: Color(0xFF0F4966),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    ),
    Positioned(
    left: 15,
    top: 22,
    child: SizedBox(
    width: 32,
    child: Text(
    '+12',
    style: TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 1,
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ],
    ),
        ),
      ],
    );
  }
}
