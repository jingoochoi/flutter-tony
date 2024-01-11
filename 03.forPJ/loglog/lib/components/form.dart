import 'package:flutter/material.dart';
import 'package:loglog/components/text.dart';
import 'package:loglog/size.dart';

class FormD extends StatelessWidget {
  final _keys = GlobalKey<FormState>();
  FormD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keys,
      child: Column(
        children: [
          TextD('EMAIL'),
          SizedBox(
            height: medi,
          ),
          TextD('PASSWORD'),
          SizedBox(
            height: huge,
          ),
          TextButton(
            onPressed: () {
              if (_keys.currentState!.validate()) {
                Navigator.pushNamed(context, '/home');
              }
            },
            child: Text('LOG IN'),
          )
        ],
      ),
    );
  }
}
