//
//  main.swift
//  20211113_Swift_W2D6
//
//  Created by Joobang Lee on 2021/11/13.
//

import Foundation
/*
class Man{
    var age : Int = 2 // 값을 초기화하거나 optional을 사용해서 nil값으로 표현함
    var weight : Double = 3.5
    var manAge : Int{//computed property 이다.
       get{//함수인데 약식으로 되어 있다. 이럴 경우 manAge에서 -1 하는 것을 자동으로 리턴한다.
            return age - 1//get이 생략가능하다.
       }
        set(newValue){//newValue를 생략할 수 있다.
            age = newValue + 1
        }
    }
    
    func display(){
        print("나이 = \(age), 몸무게 = \(weight) ")
    }
    class func cM(){
        print("cM은 클래스 매서드입니다.")
    }
    static func scM(){
        print("scM은 클래스 매서드(static)")
    }
    /*
    init(age: Int, weight : Double){//초기화 할 변수명을 동일하게 하고 하단에 셀프를 통해 다시 한번 초기화 한것을 이야기하면 좋다.
        self.age = age //그냥 age를 쓸 수 있지만 컴파일시 어떤 age를 헷갈리게 된다. 그래서 위의 age를 쓴다고 밝히기 위해 self를 사용하는 것이 좋다.
        self.weight = weight
    }//기 선언된 변수를 초기화 시켜줄 수 있음.
    init(age: Int) {//나는 그냥 디폴트 몸무게는 두고 나이가 그냥 바꾸고 싶음
        self.age = age
    }
     */
   /* init(age: Int, weight: Double){
        if age <= 0 {
            return nil
        } else {
            self.age = age
        }
        self.weight = weight
     */
}

/*
var x : Int
//var kim : Man = Man()//인스턴스를 객체로 만들때는 이것처럼 써야 한다., 클래스를 만들게 되면 디폴트 생성자로 인해 그 클래스에 디폴트 생성자를 불러와야 한다.
// var 변수명 : 자료형 = 초기값
// var 인스턴스명 : 클래스명 = 클래스명() -> var 인스턴스명 = 클래스명()
//print(kim.age) // 인스턴스.프로퍼티, 2
//kim.display() // 인스턴스.인스턴스메서드, 나이 = 2, 몸무게 = 3.5
Man.scM()// 클래스 안에 프로퍼티가 온다. 프로퍼티는 초기값을 가져야 한다. 클래스 안에 직접 함수를 넣으면 이때 이 함수를 사용하는 것은 별도로 만들어진 객체(ex.var kim)가 가지고 놀 수 있게 되며, 함수 앞에 클래스 또는 스태틱을 입력할 경우 별도 객체 내 클래스 선언 후 사용하는 것이 아니라 객체에서 직접 해당 함수를 사용할 수 있게 된다.
Man.cM()
// cM은 클래스 매서드(static)
// cM은 클래스 매서드입니다.

//class -> 오버라이드(상속)를 할 수 있음
//static -> 상속 없을 땐 static을 사용함

// 인스턴스 초기화하기
// 클래스, 구조체, 열거형(enum)
// - 인스턴스가 생성되는 시점에서 해야할 초기화 작업
// - 인스턴스가 만들어지면서 자동호출됨
// = 함수인데 func 나 return을 사용하지 않음

var kim : Man = Man(age: 10, weight: 20.3)
var kim1 : Man = Man(age: 10)
kim1.display()//나이 = 10, 몸무게 = 3.5
kim.display()//나이 = 10, 몸무게 = 20.3
print(kim.manAge)
kim.manAge = 3
print(kim.age)
//self
// 현재 클래스 내 메서드 나 프로퍼티를 가리킬 때 메서드나 프로퍼티 앞에 self를 붙임


//method overloading 메소드 중첩

//1. loading and Caching Images
// failable Initializer의 경우를 준비한다.
// let myImage : UIImage = UIImage(named: "apple.png")!
// 옵셔널이 들어갈 경우 '!'를 활용하여 언박싱을 해야 닐로 표기되어 풀어지지 않음

*/
//1
//var kim : Man? = Man(age: 1, weight: 1.5)
//if let kim1 = kim{//옵셔널 바인딩 굉장히 중요하다.
//    kim1.display()
//}
//
////2
//if let kim2 = Man(age: 2, weight: 5.6){
//    kim2.display()
//}
////3
//var kim3 : Man = Man(age: 7, weight: 7.5)!
//kim3.display()
////와우 이게 됨?

class Student : Man{
    
}
var lee : Student = Student(age: 17, weight: 29.3)
lee.display()
*/


class Man{
    var age : Int = 1
    var weight : Double = 4.5
    func display(){
        print("나이 = \(age), 몸무게 = \(weight)")
    }
    init(age: Int, weight: Double){
        self.age = age
        self.weight = weight
    }
}

class student : Man{
    
}

var kim : Man = Man(age: 17, weight: 17.5)
kim.display()
var lee : student = student(age: 27, weight: 27.5)
lee.display()
print(lee.age)
