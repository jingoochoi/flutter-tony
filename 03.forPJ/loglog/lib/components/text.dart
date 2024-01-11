import 'package:flutter/material.dart';
import 'package:loglog/size.dart';

class TextD extends StatelessWidget {
  final String text;
  const TextD(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: smal,
        ),
        TextFormField(
          //!=>should not null(notice to compiler)
          validator: (value) =>
              value!.isEmpty ? 'PLEASE FILL OUT THIS FORM' : null,
          obscureText: text == 'PASSWORD' ? true : false,
          decoration: InputDecoration(//설정 안 하면 각 기본 디자인
            hintText: 'ENTER $text',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue,width: 3)
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red,width: 3*2)
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.green,width: 3*3)
            ),
          ),
        )
      ],
    );
  }
}
