import 'package:flutter/material.dart';
import 'package:flutter_layouts/utils/create_squares.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: createGallery(10),
      ),
    );
  }

  List<Widget> createGallery (int numImages) {

    List<Widget> images =[];
    List<String> urls = [];
    urls.add('http://bit.ly/gvcar_1');
    urls.add('http://bit.ly/gvcar_2');
    urls.add('http://bit.ly/gvcar_3');
    urls.add('http://bit.ly/gvcar_4');
    urls.add('http://bit.ly/gvcar_5');
    
    int i=0;
    while (i < numImages) {
      Widget image = Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(urls[i%5]),fit: BoxFit.cover),
        ),
      );
      images.add(image);
      i++;
    }
    return images;
  }
}
