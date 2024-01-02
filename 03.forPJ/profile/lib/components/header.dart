// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        _widgetA(),
        SizedBox(width: 20,),
        _widgetH(),
      ],
    );
  }
}

Widget _widgetA() {
  return SizedBox(
    width: 100,
    height: 100,
    child: CircleAvatar(
      backgroundImage: AssetImage('avatar.png'),
    ),
  );
}

Widget _widgetH() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'JASON CHOI',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        'PROGRAMMER/DESIGN',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      Text(
        'FLUTTER PROGRAMMING',
        style: TextStyle(
          fontSize: 13,
        ),
      )
    ],
  );
}
