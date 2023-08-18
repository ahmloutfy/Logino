import 'package:flutter/material.dart';

class CurvedShapes extends StatelessWidget {
  const CurvedShapes({super.key});

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
                'Welcome \nBack',
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
    Paint orangePaint = Paint()
      ..color = const Color(0xffF4AC46)
      ..style = PaintingStyle.fill;

    Path orangeShape = Path()
      ..moveTo(0, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.15, size.height * 0.24,
          size.width * 0.15, size.height * 0.15)
      ..quadraticBezierTo(size.width * 0.15, size.height * 0.05,
          size.width * 0.35, size.height * 0.05)
      ..quadraticBezierTo(
          size.width * 0.45, size.height * 0.05, size.width * 0.55, 0)
      ..lineTo(0, 0)
      ..close();

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
      ..moveTo(size.width * 0.63, size.height * 0.32)
      ..quadraticBezierTo(
          size.width * 0.73, size.height * 0.45, size.width, size.height * 0.42)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(blueShape, bluePaint);
    canvas.drawPath(blackShape, blackPaint);
    canvas.drawPath(orangeShape, orangePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}