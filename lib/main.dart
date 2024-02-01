import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  Center(
          child: CustomPaint(
            size: Size(200, 300), // Size of the canvas
            painter: SnowmanPainter(),
          ),
        ),
      ),
    );
  }
}

class SnowmanPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue[100]!
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 3);
    final bodyRadius = size.width / 4;
    final headRadius = bodyRadius / 2;


    canvas.drawCircle(Offset(center.dx, center.dy + bodyRadius - -14), bodyRadius, paint);


    canvas.drawCircle(Offset(center.dx, center.dy), bodyRadius - 10, paint);

    canvas.drawCircle(Offset(center.dx, center.dy - bodyRadius * 1.1), headRadius, paint);


    final eyeAndButtonPaint = Paint()..color = Colors.black;
    final eye = Paint()..color = Colors.blue;

    canvas.drawCircle(Offset(center.dx - 10, center.dy - bodyRadius * 1.0 - 10), 5, eye);
    canvas.drawCircle(Offset(center.dx + 10, center.dy - bodyRadius * 1.0 - 10), 5, eye);

    final nosePaint = Paint()..color = Colors.orange;
    canvas.drawCircle(Offset(center.dx, center.dy - bodyRadius * 1.0), 5, nosePaint);


     canvas.drawCircle(Offset(center.dx, center.dy), 5, eyeAndButtonPaint);

    canvas.drawCircle(Offset(center.dx, center.dy + 80), 5, eyeAndButtonPaint);
    canvas.drawCircle(Offset(center.dx, center.dy + 60), 5, eyeAndButtonPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}



// import 'package:flutter/material.dart';
// import 'dart:math' as math;
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: W_layout(),
//     );
//   }
// }
//
// class W_layout extends StatefulWidget {
//   const W_layout({super.key});
//
//   @override
//   State<W_layout> createState() => _W_layoutState();
// }
//
// class _W_layoutState extends State<W_layout> with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _angleAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 1),
//     )..repeat(reverse: true);
//
//     _angleAnimation = Tween<double>(begin: 0.0, end: 0.5).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     )..addListener(() {
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CustomPaint(
//           size: const Size(200, 200),
//           painter: MyCustomPainter(_angleAnimation.value),
//         ),
//       ),
//     );
//   }
// }
//
// class MyCustomPainter extends CustomPainter {
//   final double mouthAngle;
//
//   MyCustomPainter(this.mouthAngle);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.transparent
//       ..style = PaintingStyle.fill;
//     final center = Offset(size.width / 2, size.height / 2);
//
//
//     canvas.drawCircle(center, size.width / 1, paint);
//
//
//     final mouthSweepAngle = 2 * math.pi - mouthAngle * 2;
//     paint.color = Colors.yellow;
//
//
//     canvas.drawArc(Rect.fromCircle(center: center, radius: size.width / 2), mouthAngle, mouthSweepAngle, true, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant MyCustomPainter oldDelegate) {
//     return mouthAngle != oldDelegate.mouthAngle;
//   }
// }

//       body: LayoutBuilder(builder: (context, constrains) {
//         print(constrains.maxHeight);
//         print(constrains.maxWidth);
//         print(constrains.minHeight);
//         print(constrains.minWidth);
//
//         return GridView(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: getMaxColumnSize(constrains.maxWidth),
//           ),
//           children: [
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const WCard(),
//             const Text("salom "),
//           ],
//         );
//       }),
//     );
//   }
//
//   int getMaxColumnSize(double value) {
//     if (value > 1020) {
//       return 1;
//     } else if (value > 1020 && value < 1280) {
//       return 2;
//     } else {
//       return 3;
//     }
//   }
// }
//
// class WCard extends StatelessWidget {
//   const WCard({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         border: Border.all(
//             width: 1,
//             color: Colors.grey),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: const Column(
//         children: [
//           Text(
//             'data',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           Text(
//             'data',
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }