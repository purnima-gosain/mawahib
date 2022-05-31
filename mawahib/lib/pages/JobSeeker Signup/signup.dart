import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 247, 147, 180)),
      height: 240,
      width: 600,
      child: CustomPaint(
        painter: Line(),
        child: Container(),
      ),
    ));
  }
}

class Line extends CustomPainter {
  @override
  Path paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint()
      ..color = Color.fromARGB(255, 223, 173, 173)
      ..strokeWidth = 10.0;

    path.lineTo(size.width - 300, size.height / 2 + 5);
    var firstEndPoint = Offset(0, size.height / 2 + 5);
    var firstControlPoint = Offset(50.0, size.height - 5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    // var secondEndPoint = Offset(0, size.height - 7.5);
    // var secondControlPoint = Offset(20.0, size.height - 15);

    // path.quadraticBezierTo(secondEndPoint.dx, secondEndPoint.dy,
    //     secondControlPoint.dx, secondControlPoint.dy);
    // path.quadraticBezierTo(
    //     size.width * 0.54, size.height / 2, size.width / 4, size.height / 2.5);

    // path.quadraticBezierTo(
    //     size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
    // path.quadraticBezierTo(size.width * 0.40, size.height * 0.40,
    //     size.width * 0.50, size.height * 0.70);
    // path.quadraticBezierTo(size.width * 0.60, size.height * 0.85,
    //     size.width * 0.65, size.height * 0.65);
    // path.quadraticBezierTo(
    //     size.width * 0.70, size.height * 0.90, size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
