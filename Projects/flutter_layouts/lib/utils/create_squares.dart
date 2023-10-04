
import 'package:flutter/material.dart';

List<Widget> createSquares(int number) {
  int i = 0;
  List colors = [
    Colors.amber,
    Colors.indigo,
    Colors.lightBlue,
    Colors.deepOrange,
    Colors.purple
  ];
  List<Widget> squares = [];
  while (i < number) {
    //expanded fills all the available space
    Expanded square = Expanded(
      // flex: i,
      child: Container(
        color: colors[i % 5],
        width: 60,
        height: 60,
        child: Text(i.toString()),
      ),
    );
    squares.add(square);
    i++;
  }
  return squares;
}