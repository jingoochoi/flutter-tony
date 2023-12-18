// import 'dart:ffi';
import 'dart:math';

void main(List<String> args) {
  game();
}
  // void game(){
  // if (gong==0) {
  //   life=life-arco+dfen;
  //   print('❤ $life');
  //   print(msgs[gong]);
  //   if (life<1) {
  //     print('GAME SET');
  //     return;
  //   }
  // }
  // if (gong==1) {
  //   life=life-crtc+dfen;
  //   print('❤ $life');
  //   print(msgs[gong]);
  //   if (life<1) {
  //     print('GAME SET');
  //     return;
  //   }
  // }
  // game();
  // }
  void game(){
    int gong=Random().nextInt(2);
    int jong=Random().nextInt(3);
    if (gong==0) {
      juck=juck-arco;
    }else juck=juck-crtc;
    print('juck:❤ $juck');
    print(msgs[gong]);
    if (juck<1) {
      print('GAME SET');
      return;
    }
    if (jong<2) {
      life=life-jatk+dfen;
      print('me:❤ $life');
      print(msgs[0]);
    }else {
      life=life-jcrt+dfen;
      print('me:❤ $life');
      print(msgs[1]);
    }
    if (life<1) {
      print('GAME SET');
      return;
    }
    game();
  }
  dynamic life=30;
  dynamic arco=3;//if random number is 0, miss. (1=attack)
  dynamic dfen=1;
  dynamic crtc=arco*arco;//attack^2
  dynamic msgs=['normal attack!','critical attack!!!'];
  // when enemy attacks, enemy's critical attack is random(1/3)
  dynamic juck=40;
  dynamic jatk=3;//juck attack
  dynamic jcrt=jatk*jatk;