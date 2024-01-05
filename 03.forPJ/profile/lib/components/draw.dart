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
            Text('setting'),
            SizedBox(height: 30,),
            Text('insight'),
            SizedBox(height: 30,),
            Text('my activity'),
            SizedBox(height: 30,),
            Text('QR code'),
            SizedBox(height: 30,),
            Text('saved'),
            SizedBox(height: 30,),
            Text('best friends'),
            SizedBox(height: 30,),
            Text('favorite'),
          ],
        ),
      ),
    );
  }
}
