import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
        width: 600,
        height: 600,
        margin: const EdgeInsets.all(50),
        decoration: const BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          gradient: LinearGradient(colors: [Colors.pink,Colors.red,Colors.redAccent]),
          image: DecorationImage(
            image: NetworkImage('https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4e7.png'),
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.lightbulb),
      ),
      persistentFooterButtons: const [
        IconButton(
            onPressed: null,
            icon: Icon(Icons.add_comment)
        ),
        IconButton(
            onPressed: null,
            icon: Icon(Icons.add_alarm)
        ),
        IconButton(
            onPressed: null,
            icon: Icon(Icons.add_location)
        ),
      ],
    );
  }
}
