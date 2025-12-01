// import 'package:flutter/material.dart';
//
//
// class CommitmentText extends StatelessWidget {
//   const CommitmentText({super.key, required this.text});
//
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
//         padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withAlpha(5),
//               blurRadius: 6,
//               offset: const Offset(2, 4),
//             ),
//           ],
//         ),
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             Text(
//               text,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 16,
//                 color: Color(0xFF0D1B2A),
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             // Triangle tail
//             Positioned(
//               bottom: -10,
//               left: 0,
//               right: 0,
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: CustomPaint(
//                   size: const Size(20, 10),
//                   painter: TrianglePainter(color: Colors.red),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class TrianglePainter extends CustomPainter {
//   final Color color;
//   TrianglePainter({required this.color});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = color;
//     final path = Path()
//       ..moveTo(0, 0)
//       ..lineTo(size.width / 2, size.height)
//       ..lineTo(size.width, 0)
//       ..close();
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
