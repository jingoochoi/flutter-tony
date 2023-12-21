void main(List<String> args) {
  // 믹스인 (다중상속)
  // 다른 코드에 더해질 목적으로 만들어진 클래스
  // with 키워드 씀
  // 형식:mixin 클래스명{}//1.믹스인 전용 클래스
  //      mixin class 클래스명{}//2.개별 인스턴스 사용가능
  // 믹스인 사용 클래스의 형식:class 클래스명 with 믹스인클래스,믹스인클래스,...{}//여러 개 씀
  Tess ts=Tess('테스형차', 'model3', 6350.0);
  print('electric car company name:${ts.name}');
  print('electric car model name:${ts.mode}');
  print('electric car price:${ts.rice}만원');
  print('electric car distance:${ts.dist}km');
  print('electric car engine:${ts.pwer}마력');
  print('electric car wheel:${ts.info}');
  print('electric car lightness:${ts.lumi}lux');
  // mixin without class
  // Eg eg=Eg();//인스턴스 불가능->부품 같은 느낌
  Bulb bb=Bulb();
  print('lightness:${bb.lumi}');

  // composition
  Hyun hd=Hyun(Lges());
  print('${hd.lg.pwer},${hd.lg.dist}');
}
class Tess with Eg,Heel,Bulb{
  final name;
  final mode;
  final rice;
  double dist=480.0;
  Tess(this.name,this.mode,this.rice);
}
mixin Eg{
  int pwer=5000;
}
mixin Heel{
  String info='wide,4wd';
}
mixin class Bulb{
  double lumi=3000.0;
}
// 믹스인 없으면 어떻게 하나?
// 원래는 컴포지션을 사용한다
class Lges{
  int pwer=8000;
  double dist=500.0;
}
class Hyun{
  Lges lg;//내부에 선언
  Hyun(this.lg);//생성자에다 등록
}