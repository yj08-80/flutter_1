
// example1.dart 파일 생성
// 1. void main(){} 이용한 최초 실행
// 2. 위젯을 구현한다. 위젯이란? 화면을 구성하는 가장 작은 단위 ( == 컴포넌트 )


// [1] 위젯 만들기
// (1) StatelessWidget 상속받는다
// (2) build 함수 재구현한다
// (3) build 함수의 return 에 'MaterialApp' 반환한다
// (4) main() 안에서 최초로 실행할 위젯
import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget{
  // extends 란? 특정 클래스로부터 물려받는 행위
  @override
  Widget build(BuildContext context) {
    return MaterialApp( home : Text( "안녕하세요" ) );
  }
}

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 자바 : new 클래스명( 매개변수 ) vs DART : 클래스명( 속성명 : 값 )
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(), // 상단 바
        body: Center(), // 본문
        bottomNavigationBar: BottomAppBar(), // 하단 바
      ),
    );
  }
}

void main(){ // public static void main(){} 와 비슷한 main스레드 갖는다
  print("dart입니다."); // System.out.print() 와 비슷한 출력함수
  runApp( MyApp1() ); // runApp( 최초로실행할위젯 );
}
// 함수의 반환타입이 없다는 뜻
// main 함수명. 자바와 비슷하게 최초 실행은 void main 시작된다
