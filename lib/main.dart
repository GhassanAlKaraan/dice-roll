import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = 1;
  int dice2 = 2;

  void rollDice (){
    dice1 = Random().nextInt(6) + 1;
    dice2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dice1 = Random().nextInt(6) + 1;
                  dice2 = Random().nextInt(6) + 1;
                  print(dice1);
                });
              },
              child: Image.asset('images/dice$dice1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() { //looks inside the whole Build Widget
                  dice1 = Random().nextInt(6) + 1;
                  dice2 = Random().nextInt(6) + 1;
                  print(dice2);
                });
              },
              child: Image.asset('images/dice$dice2.png'),
            ),
          ),
        ],
      ),
    );

  }
}



// class DicePage extends StatelessWidget {
//
//   int dice1 = 1;
//   int dice2 = 2;
//
//   @override
//   Widget build(BuildContext context) {
//     // Random random = Random();
//     // int dice1 = random.nextInt(6) + 1;
//     // int dice2 = random.nextInt(6) + 1;
//
//     return Center(
//       child: SafeArea(
//         child: Row(
//           children: [
//             Expanded(
//                 //flex: 1,
//                 child: TextButton(
//                     onPressed: () {
//                       print('button 1 pressed');
//                     },
//                     child: Image.asset('images/dice$dice1.png'))),
//             Expanded(
//                 //flex: 2,  twice as big
//                 child: TextButton(
//                     onPressed: () {
//                       print('button 2 pressed');
//                     },
//                     child: Image.asset('images/dice$dice2.png'))),
//           ],
//         ),
//       ),
//     );
//   }
// }
