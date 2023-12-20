void main(List<String> args) {
  // 다트의 클래스
  // 정의:목적을 가진 프로그램에서 사용하기 위해 구성요소에 해당하는 요인과 함수로 구성된 프로그램 단위체. 특히 클래스 내부의 함수를 메서드, 요인을 속성이라고 한다.
  // 형식:class Myclass(pascal case) {
    // 요인 선언 및 할당->선언만 할 수도 있고 할당까지 가능함
    // 생성자메서드(){}->생성자는 클래스 사용 시 가장 먼저 호출
    // 메서드()
  // }
  // 클래스의 형은 클래스명이다.
  Dogs d1=Dogs();
  print('my dog name is ${d1.name}');
  d1.name='happy';//클래스 속성값 업데이트
  print('after a year, my new dog is ${d1.name}');
  // 중요한 것은 속성 자체의 정의이다
  // 값은 그것을 사용하는 사용자의 등록에 따라 달라진다
  print("my dog's color is ${d1.colo}.age is ${d1.ages}.");
  print("first training:${d1.tdog()}%");
  dynamic doit;
  for (var i = 0; i < 10; i++) {
    doit=d1.tdog();
  }
  print('10training:$doit%');
  // 다른 요인에 도그 클래스 사용
  Dogs d2=Dogs();
  print('my lovely puppy is ${d2.name}');
  Cats c1=Cats('nabi', 4, 'polka-dotted');
  print('name:${c1.name},age:${c1.ages},color:${c1.colo}');
  // c1.name='spinx cat';//bacuse it is 'final' type
  print('new one is ${c1.name}');
  // test
  const aa='aa';
  final bb;//final is used in class a lot because can do first 할당 later
  bb='bb';//if it was const, error(const must declare with 할당)
  print(aa);
  print(bb);
}
class Pets{
  final String spec;
  final String chrt;
  final String feed;
  Pets(this.spec,this.chrt,this.feed){
    print('pet class code');
  }
  String hear(roar){
    dynamic cval;
    switch (roar) {
      case 'cat':
        cval='yaong';
        break;
      case 'dog':
        cval='mongmong';
        break;
      default:
        cval='animal';
    }
    return cval;
  }
}
class Dogs{
  // 속성
  String name='sibasaki';
  int ages=8;
  String colo='black';
  int bite=100;
  // 메서드
  int tdog(){
    bite=bite-5;
    if (bite<50) {
      bite=50;
    }
    else if(bite>100)bite=100;
    return bite;
  }
}
class Cats{
  final name;
  final ages;
  final colo;
  int punc=100;
  // 초기화는 생성하는 코드에서 해준다
  // 이것을 해주도록 생성자를 설정한다
  // 생성자는 클래스와 이름이 같다
  Cats(this.name,this.ages,this.colo){
    print('codezone');
  }
  // 메서드
  void tdog(){
    punc=punc-5;
  }
}