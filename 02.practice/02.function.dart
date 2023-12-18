void main(List<String> args) {
  // 함수는 실행코드 저장소
  // 형식 : 데이터명 함수이름(전달값){코드}
  // -데이터형: 함수에서 값을 리턴할 데이터 형태 (리턴값이 없으면 보이드)
  // -전달값: 데이터형과 함께 var로 표현
  // int fn(int a){return a+100}//example

  // anonymous function
  // 형식 : (){코드}
  // 함수명((){코드})-호출->void 함수(Function f){f()}

  // ramda function
  // 함수형 콘스트로 선언 후 화살표로 리턴코드 작성
  // 형식 : Function 함수명=(전달명)=>코드

  // 다트의 상수 [final,const]
  show('이순신은 누구일까요?');
  show('이순신의 마지막 전투는?${last[2]}${tail[last[2]]}');
  show(make(0));
  show(make(1));
  show(make(2));
  show('이순신 시리즈 영화 주요 출연자들:${list(acts.toList())}');
  show('다음 이순신 시리즈가 있다면 추천 배우는 공유다');
  show('공유의 취미는 ${rcat['공유']?['취미']}다. 주소는 ${rcat['공유']?['주소']}다. 공유의 자동차는 ${rcat['공유']?['자동차']??'없'}다.');
  jpbt((){print('적선에 방포하여 침몰시켰다.');});
  show('아직 신에게는 12척의 배가 남아있습니다.->${last[0]}해전');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  // show('아직 신에게는 ${mina()} 남아있습니다.');
  show('이순신의 동명이인 부하 입부 이순신이 긴장해서 구구단을 외웠다.');
  show(ipbu());
  show(ipbu());
  show(ipbu());
  show(ipbu());
  show(ipbu());
  show(ipbu());
  show(ipbu());
  show(ipbu());
  show(ipbu());
}
  int ship=13;
  Function mina=()=>--ship;
  int mult=0;
  Function ipbu=()=>mult+=9;
  void jpbt(Function bomb){
    print('나는 일본 배다. 각오햇!!');
    bomb();
  }
  const rcat={
    '조인성':{'나이':42,'취미':'날기','주소':'아무데나'},
    '공유':{'나이':45,'취미':'비가오게하기','주소':'공하우스'},
  };
  final last=['명량','한산','노량'];
  const tail={'명량':'해전','한산':'도 대첩','노량':'해전'};
  final stit={'명량':null,'한산':'드래곤 출현','노량':'죽음의 바다'};
  final acts={
    '박해일',
    '변요한',
    '최민식',
    '안성기',
    '최민식',
    '류승룡',
    '조진웅',
    '최민식',
    '김윤석',
    '김명곤',
    '진구',
    '이정현',
    '김윤석',
    '김윤석',
    '백윤식',
    '김윤석',
    '정재영',
    '허준호',
    '김윤석',
    '김성규',
    '이규형',
    '이무생',
    '최덕문',
    '안보현',
    '박명훈',
    '안보현',
    '박훈',
    '문정희'
  };
void show(var txt){print(txt);}
String make(int eq){
  return'${last[eq]}의 영화 부제목:${stit[last[eq]]??'없음'}';//null safety
  // null safety=널 데이터가 생길 경우 에러를 막기 위해 조치함
  // 1.널 체크 연산자:?(여부체크)
  // 2.널 병합 연산자:??(널일 경우 뒤의 값을 출력)
}
String list(List aa){
  var temp='';
  for (var x in aa) {
    temp+='💣$x ';
  }
  return temp;
}