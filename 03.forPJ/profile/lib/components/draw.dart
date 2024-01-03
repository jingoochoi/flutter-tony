import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text('menu1'),
            SizedBox(height: 30,),
            Text('menu2'),
            SizedBox(height: 30,),
            Text('menu3'),
            SizedBox(height: 30,),
            Text('menu4'),
          ],
        ),
      ),
    );
  }
}
