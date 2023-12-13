void main(List<String> args) {
  // 다트언어는 형태를 자동으로 인식하는 선언이 있음
  // 1.var
  var home='home';
  print(home);
  home='yours also big';
  print(home);
  // 2.dynamic=similar as var,but can change the type when 재할당
  dynamic id='jiji';
  print('my id is $id');
  id=123123;
  print('your id is $id');

  //다트언어는 var의 형을 선언함이 기본이다
  // 1.숫자:int(egar),double(실수),num(int&double)
  int n1=2023;//only integar allowed from now on
  print(n1);
  double n2=3;//only integar&double allowed from now on(in case of integar, .0 added)
  print(n2);
  num n3=100;//only integar&double allowed from now on
  print(n3);
  n3=3.3;
  print(n3);
  // 2.string
  String name='tony';//only string allowed from now on
  print('my name is $name');
  // 3.boolean(bool)
  bool t=true;
  print('true of false? $t');
  // 4.collection:list,set,map
  // list-same as array
  List<String> we=['you','i'];
  print(we);
  print('/'+we[0]);
  print(we.length);
  // set
  // 순서가 없으므로 호출해서 사용코자 할 때는 리스트형으로 바꾼다.
  // Set<dynamic> even={2,4,6,8,'boll'};
  var even={2,4,6,8,'boll'};
  print(even);
  print(even.toList());
  print(even.toList()[3]);
  // map-same as object
  Map<String,String>at={'name':'kang','age':'40'};
  print(at);

  // changing type=convering some type to another type(=casting)
  // 1.how to:[type(another)].parse([type(original)])
  String stnb='333';
  print('string number $stnb');
  num sult=333+int.parse(stnb);
  print('after parse $sult');
  // 2.method chain:[name].to[Type]()
  num ccc=123;
  ccc.toString();
}