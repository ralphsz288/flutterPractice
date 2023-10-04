import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY * 0.30,
      child: ListView.separated(
        itemCount: 25,
        itemBuilder: (context,index) => createSquare(index),
        separatorBuilder: (BuildContext context, int index) => createSeparator(index),
      ),
    );
  }

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
    squares.add(Container(
      color: Colors.black,
    ));
    while (i < number) {
      Container square = Container(
        color: colors[i % 5],
        width: 100,
        height: 100,
        child: Text(i.toString()),
      );
      squares.add(square);
      i++;
    }
    return squares;
  }

  Widget createSquare(int position) {
    List colors = [
      Colors.amber,
      Colors.indigo,
      Colors.lightBlue,
      Colors.deepOrange,
      Colors.purple
    ];
    Container square = Container(
      color: colors[position % 5],
      width: 100,
      height: 100,
      child: Text(position.toString()),
    );
    return square;
  }

  Widget createSeparator (int position) {
    Widget separator = Container (
      height: 15,
      color: Colors.black,
    );
    return separator;
  }
}
