import 'package:flutter/material.dart';

class CurvedShapesLogup extends StatelessWidget {
  const CurvedShapesLogup({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomPaint(
      painter: SampleShape(),
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: const Stack(
          children: [
            Positioned(
              top: 230,
              right: 230,
              child: Text(
                'Create \nAccount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}

class SampleShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint blackPaint = Paint()
      ..color = const Color(0xff383F49)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.5;

    Path blackShape = Path()
      ..moveTo(0, size.height * 0.36)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.5,
          size.width * 0.65, size.height * 0.30)
      ..quadraticBezierTo(size.width * 0.73, size.height * 0.18,
          size.width * 0.90, size.height * 0.15)
      ..quadraticBezierTo(
          size.width * 0.97, size.height * 0.14, size.width, size.height * 0.12)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    Paint bluePaint = Paint()
      ..color = const Color(0xff58BEE6)
      ..style = PaintingStyle.fill;

    Path blueShape = Path()
..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height)
      ..cubicTo(size.width * 0.6, size.height * 0.8, size.width * 0.9, size.height * 0.8, size.width, size.height * 0.8)

    ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(blueShape, bluePaint);
    canvas.drawPath(blackShape, blackPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}