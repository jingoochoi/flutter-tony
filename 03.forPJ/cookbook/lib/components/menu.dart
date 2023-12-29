import 'package:flutter/material.dart';

class Meno extends StatelessWidget {
  const Meno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _meno(Icons.restaurant_menu, 'total'),
        Spacer(),
        _meno(Icons.emoji_food_beverage, 'coffee'),
        Spacer(),
        _meno(Icons.fastfood, 'burger'),
        Spacer(),
        _meno(Icons.local_pizza, 'pizza'),
      ],
    );
  }
}

Widget _meno(IconData iconData, String text) {
  return Container(
    width: 20 * 4,
    height: 100,
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Colors.lightGreen, Colors.green],
          stops: [0.5,1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,세로중앙
      children: [
        Spacer(),
        Icon(
          iconData,
          color: Colors.red,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        Spacer(),
      ],
    ),
  );
}
