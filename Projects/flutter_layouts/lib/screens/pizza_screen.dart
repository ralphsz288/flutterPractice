import 'package:flutter/material.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://e0.pxfuel.com/wallpapers/914/966/desktop-wallpaper-pizza-phone-phone-wall-cute-pizza.jpg'),
                fit: BoxFit.fitHeight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: sizeHeight * 0.10,
                  left: sizeWidth * 0.10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: sizeWidth * 0.80,
                    height: sizeHeight * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text('Pizza Margherita',style:Theme.of(context).textTheme.titleLarge)),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20,10,0,0),
                          child: Text('This delicious pizza is made of Tomato, Mozzarella and Basil.'),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0,0),
                          child: Text('Seriously you can\'t miss it'),
                        ),
                      ],
                    ),
                  ),
              ),
              Positioned(
                bottom: sizeHeight * 0.05,
                left: sizeWidth * 0.10,
                width: sizeWidth * 0.80,
                child:
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text('Order now!', style: Theme.of(context).textTheme.bodyMedium,),
                  )),
            ],
          )),
    );
  }
}
