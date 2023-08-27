import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  buildKey(int n, Color color, String c) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color, foregroundColor: Colors.black),
        onPressed: () {
          playSound(n);
          // Do something when the button is pressed.
        },
        child: Text(c),
      ),
    );
  }

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1, Colors.red, ""),
            buildKey(2, Colors.orange, "H"),
            buildKey(3, Colors.yellow, "A"),
            buildKey(4, Colors.green, "R"),
            buildKey(5, Colors.pink, "S"),
            buildKey(6, Colors.purple, "H"),
            buildKey(7, Colors.blue, ""),
          ],
        )),
      ),
    );
  }
}





//  TextButton(
//             onPressed: () async {
//               final player = AudioPlayer();
//               await player.play(AssetSource('note1.wav'));

//               //  await player.play(DeviceFileSource('assets/note1.wav'));
//             },
//             child: Text('Note'),
//           ),




  // Expanded(
  //             child: TextButton(
  //               style: TextButton.styleFrom(
  //                 minimumSize: Size(50, 50),
  //                 backgroundColor: Colors.red,
  //               ),
  //               onPressed: () {
  //                 playSound(1);
  //                 // Do something when the button is pressed.
  //               },
  //               child: Text(''),
  //             ),
  //           ),
  //           Expanded(
  //             child: TextButton(
  //               style: TextButton.styleFrom(
  //                 minimumSize: Size(50, 50),
  //                 backgroundColor: Colors.orange,
  //               ),
  //               onPressed: () {
  //                 playSound(2);
  //                 // Do something when the button is pressed.
  //               },
  //               child: Text(''),
  //             ),
  //           ),
  //           Expanded(
  //             child: TextButton(
  //               style: TextButton.styleFrom(
  //                 minimumSize: Size(50, 50),
  //                 backgroundColor: Colors.yellow,
  //               ),
  //               onPressed: () {
  //                 playSound(3);
  //                 // Do something when the button is pressed.
  //               },
  //               child: Text(''),
  //             ),
  //           ),
  //           Expanded(
  //             child: TextButton(
  //               style: TextButton.styleFrom(
  //                 minimumSize: Size(50, 50),
  //                 backgroundColor: Colors.green,
  //               ),
  //               onPressed: () {
  //                 playSound(4);
  //                 // Do something when the button is pressed.
  //               },
  //               child: Text(''),
  //             ),
  //           ),
  //           Expanded(
  //             child: TextButton(
  //               style: TextButton.styleFrom(
  //                 minimumSize: Size(50, 50),
  //                 backgroundColor: Colors.pink,
  //               ),
  //               onPressed: () {
  //                 playSound(5);
  //                 // Do something when the button is pressed.
  //               },
  //               child: Text(''),
  //             ),
  //           ),
  //           Expanded(
  //             child: TextButton(
  //               style: TextButton.styleFrom(
  //                 minimumSize: Size(50, 50),
  //                 backgroundColor: Colors.purple,
  //               ),
  //               onPressed: () {
  //                 playSound(6);
  //                 // Do something when the button is pressed.
  //               },
  //               child: Text(''),
  //             ),
  //           ),
  //           Expanded(
  //             child: TextButton(
  //               style: TextButton.styleFrom(
  //                 minimumSize: Size(50, 50),
  //                 backgroundColor: Colors.blue,
  //               ),
  //               onPressed: () {
  //                 playSound(7);
  //                 // Do something when the button is pressed.
  //               },
  //               child: Text(''),
  //             ),
  //           )