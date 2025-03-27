import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradeintContainer extends StatelessWidget {
  const GradeintContainer(this.color1, this.color2, {super.key});

  const GradeintContainer.blueGreen({super.key})
    : color1 = Colors.blue,
      color2 = Colors.green;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}

// class GradeintContainer extends StatelessWidget {
//   const GradeintContainer(this.colors,{super.key});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText("Hello, World!"),
//       ),
//     );
//   }
// }
