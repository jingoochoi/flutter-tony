import 'package:flutter/material.dart';
import 'package:loglog/components/form.dart';
import 'package:loglog/components/logo.dart';
import 'package:loglog/size.dart';

class Logi extends StatelessWidget {
  const Logi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(color: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: xx,
            ),
            Logo('LOG IN'),
            SizedBox(
              height: huge,
            ),
            FormD()
          ],
        ),
      ),
    );
  }
}
