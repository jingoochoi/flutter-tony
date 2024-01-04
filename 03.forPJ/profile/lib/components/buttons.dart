import 'package:flutter/material.dart';

class Btbt extends StatelessWidget {
  const Btbt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [_widgetF(), _widgetM()],
    );
  }
}

/*
  [플러터 버튼]
  1.TextButton:no design but only function
  2.ElevatedButton:has design(+elevation effected)
  3.OutlineButton:only border
  4.Inkwell:buttonization widget(mainly make Container widget as a button)
 */
Widget _widgetF() {
  return InkWell(
    onTap: () {
      debugPrint('follow');//console log
    }, //click event
    child: Container(
      alignment: Alignment.center, //centerCenter
      width: 130,
      height: 20 * 2,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Follow',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget _widgetM() {
  return InkWell(
    onTap: () {
      debugPrint('message');//console log
    },
    child: Container(
      alignment: Alignment.center, //centerCenter
      width: 130,
      height: 20 * 2,
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Message',
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
