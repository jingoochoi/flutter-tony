import 'package:flutter/material.dart';
import 'package:loglog/components/logo.dart';
import 'package:loglog/size.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(color: Colors.red),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: xx,
            ),
            SizedBox(
              height: xx,
            ),
            Logo('DART'),
            SizedBox(
              height: smal,
            ),
            TextButton(
              onPressed: () {
                // if (_keys.currentState!.validate()) {
                  Navigator.pushNamed(context, '/logi');
                // }
              },
              child: Text('START'),
            )
          ],
        ),
      ),
    );
  }
}
