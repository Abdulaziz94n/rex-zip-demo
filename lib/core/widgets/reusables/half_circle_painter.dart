// class HalfCirclePainter extends CustomPainter {
//   final Color color;

//   HalfCirclePainter({required this.color});

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..style = PaintingStyle.fill;

//     final center = Offset(size.width / 2, size.height);

//     final radius = math.min(size.width / 2, size.height);

//     final startAngle = -math.pi / 2;
//     final sweepAngle = math.pi;

//     canvas.drawArc(
//       Rect.fromCircle(center: center, radius: radius),
//       startAngle,
//       sweepAngle,
//       true,
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(HalfCirclePainter oldDelegate) {
//     return oldDelegate.color != color;
//   }
// }
