import 'package:flutter/material.dart';

class Liso extends StatelessWidget {
  final String name;
  final String tito;
  const Liso(this.name, this.tito, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        AspectRatio(aspectRatio: 3/2,child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('images/$name.jpeg',fit: BoxFit.cover,),
        ),),
        SizedBox(height: 10,),
        Text(tito,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
        SizedBox(height: 10,),
        Text('당신은 당신이 직접 만든 $tito를 가지고 계신가요? 만약 없다면 여기 쉽고 훌륭한 $tito를 보고 따라해보세요. 틀림없이 좋은 결과를 만나실 겁니다.',style: TextStyle(color: Colors.grey,fontSize: 20),),
        SizedBox(height: 10,),
      ],
    );
  }
}
