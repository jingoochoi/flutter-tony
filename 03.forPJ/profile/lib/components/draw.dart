import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 10,
                ),
                Text('setting'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.insights),
                SizedBox(
                  width: 10,
                ),
                Text('insight'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.timelapse),
                SizedBox(
                  width: 10,
                ),
                Text('my activity'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.qr_code),
                SizedBox(
                  width: 10,
                ),
                Text('QR code'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.flag),
                SizedBox(
                  width: 10,
                ),
                Text('saved'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.list),
                SizedBox(
                  width: 10,
                ),
                Text('best friends'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.star_border),
                SizedBox(
                  width: 10,
                ),
                Text('favorite'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
