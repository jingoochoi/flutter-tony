void main(List<String> args) {
  var home='home';
  print(home);
  home='yours also big';
  print(home);
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
  print('my name is '+name);
  // 3.boolean(bool)
  bool t=true;
  print(t);
  // 4.collection:list,set,map
  // list-same as array
  List<String> we=['you','i'];
  print(we);
  print('/'+we[0]);
  print(we.length);
  // set
  Set<int> even={2,4,6,8};
  print(even);
  // map-same as object
  Map<String,String>at={'name':'kang','age':'40'};
  print(at);
}