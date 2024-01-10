import 'package:flutter/material.dart';
import 'package:loglog/components/logo.dart';

class Logi extends StatelessWidget {
  const Logi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(color: Colors.blue),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Logo('LOG IN'),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('GO TO HOME'))
        ],
      ),
    );
  }
}
