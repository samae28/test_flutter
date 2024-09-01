import 'package:flutter/material.dart';
import 'package:test_flutter/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
          Colors.grey,
          Colors.greenAccent)
      ),
    ),
  );
}

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//           body: GradientContainer(
//             colors: [],
//           )
//       ),
//     ),
//   );
// }
