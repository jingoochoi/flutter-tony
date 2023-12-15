import 'dart:math';

void main(List<String> args) {
  dynamic life=30;
  // print('life:$life');
  dynamic arco=3;//if random number is 0, miss. (1=attack)
  // print('attack:$arco');
  dynamic dfen=1;
  // print('defence:$dfen');
  dynamic crtc=arco*arco;//attack^2
  // print('critical attack:$crtc');
  dynamic msgs=['normal attack!','critical attack!!!'];
  // when enemy attacks, enemy's critical attack is random(1/3)
  int gong=Random().nextInt(2);
  if (gong==0) {
    life=life-arco+dfen;
    print('❤$life');
    print(msgs[gong]);
  }
  if (gong==1) {
    life=life-crtc+dfen;
    print('❤$life');
    print(msgs[gong]);
  }
}