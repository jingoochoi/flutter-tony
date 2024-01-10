import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  final String tit;
  const Logo(this.tit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/logo.svg',
          width: 70,
        ),
        Text(
          tit,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
