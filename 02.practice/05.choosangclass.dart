void main(List<String> args) {
  // 추상 클래스
  // 형식을 강제할 때 사용하는 클래스 생성방법
  // 일반 상속과 달리 추상 클래스는 모든 속성과 메서드를 다 구현해야 한다
  // 용법:abstract 키워드로 클래스를 선언한다
  // abstract class 추상클래스명{code}
  // 추상 클래스를 상속 받는 것처럼 연결하는 방법->implements 키워드 사용
  // class 클래스명 implements 추상클래스명{code}->override 필뚜!!!
  tecl();
}
abstract class Hman{//추상 메서드는 구체적으로 구현하지 않는다. but 대체적인 틀을 잡을 수 있음
  Hman(this.name);
  final String name;
  String gend();
  String ages();
  String eats()=>'$name is not now eating';//람다식 앞에 함수일 경우 펑션 키워드가 없다
  String says()=>'$name is not talking now';
}
class Somi implements Hman{
  @override
  late String _name;
  String get name=>_name;
  set name(String name)=>_name=name;
  /*************************************** 
[ 겟터 / 셋터 ]
변수값 읽기와 할당을 하도록 캡슐화를 하여
값 셋팅시 정보를 은닉하여 변수를 관리하는 방법

((방법:))
late 변수형 셋팅변수명;
변수형 get 변수명 => 셋팅변수명;
set 변수명(변수형 변수명) -> 셋팅변수명 = 변수명

((겟터/셋터 변수명))
일반적으로 변수명과 셋팅변수명은 같은이름이며 
셋팅변수명 앞에 언더바(_)를 붙여구분함
예) 변수명-> name, 셋팅변수명->_name

((late 키워드))
선언한 변수가 바로 할당되지 못할 경우
late 키워드를 앞에 사용하여 사용직전에
할당될 것임일 알려주면 에러를 막을 수 있다!

((겟터/셋터 값할당))
-> 외부에서 인스턴스 생성후 셋터를 통해 
값을 셋팅할 경우 변수명에 할당하면 된다!
클래스.변수명 = 값

 ***************************************/
  @override
  String gend()=>'$name is female';
  @override
  String ages()=>'$name is 23 year old';
  @override
  String eats()=>'$name is now eating pizza';
  @override
  String says()=>'$name is now talking something';
}
// 다트 오버라이드(오버로드(같은 이름의 메서드의 파라미터만 여러 개 만들 수 있다)는 없다)-기존의 속성과 메서드를 재정의하는(덮어쓰는) 것이다=미디어쿼리 원리
// 표시:@override

// 테스트를 수행하는 함수
void tecl(){
  // print(Somi().eats());
  // print(Somi().says());
  Somi sm=Somi();
  sm.name='전소미';
  print(sm.eats());
  print(sm.says());
  print(sm.gend());
  Jinu jn=Jinu('박진우');
  print(jn.ages());
  print(jn.gend());
  Zion zn=Zion('자이언티');
  print(zn.ages());
  print(zn.eats());
  print('\n');
  Juno jj=Juno('이준호');
  print(jj.ages());
  print(jj.cook());
  print(jj.sing());
  print(jj.gend());
}
class Jinu extends Hman{
  Jinu(String name):super(name);
  @override
  String gend()=>'$name is male';
  @override
  String ages()=>'\n$name is 4 year old';
}
abstract class Male extends Hman{
  // 추상 클래스 상속 추상 클래스-원하는 것만 재정의
  Male(String name):super(name);
  @override
  String gend()=>'$name is certainly male';
}
abstract class Wman extends Hman{
  // 추상 클래스 상속 추상 클래스-원하는 것만 재정의
  Wman(String name):super(name);
  @override
  String gend()=>'$name is certainly female';
}
class Zion extends Male{
  Zion(String name):super(name);
  String ages()=>'\n$name is 35 year old';//필수 재정의
  String eats()=>'$name is now eating hamburger';
}
mixin Hbby{
  String cook()=>' is now cooking';
  String book()=>' is now reading a book';
}
mixin Sing on Male{//mixin on 키워드-특정 클래스를 상속 받은 경우 얘만 다중상속을 하도록 제한할 수 있다.->on~에만 가능
  String sing()=>' is now singing';
}
class Juno extends Male with Hbby,Sing{
  Juno(String name):super(name);
  @override
  String ages()=>'$name is 33 year old';
  // 선택적인 재정의
  @override
  String cook()=>'$name${super.cook()}';
  @override
  String sing()=>'$name${super.sing()}';
}