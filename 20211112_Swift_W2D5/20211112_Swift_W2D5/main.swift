//
//  main.swift
//  20211112_Swift_W2D5
//
//  Created by Joobang Lee on 2021/11/12.
//

import Foundation
/*
print("One two three four five")

print(1...5)

print(1.0, 2.0, 3.0, 4.0, 5.0)

print(1.0, 2.0, 3.0, 4.0, 5.0, separator: ",")

for n in 1...5 {
    print(n)
}

// 타입을 알고자 할때

//var x = 10
//print(type(of: x))

let s = MemoryLayout.size(ofValue: x)
let t = MemoryLayout<Int>.size // 해당 변수의 크기가 궁금할 때는 위의 경우를 통해 확인할 수 있다.

print(s, t)

var mychar4 : Character = "\u{0058}"
var mychar5 : Character = "\u{0158}"
print(mychar4) // 대문자 X가 출력된다.
print(mychar5) // Ř 가 출력된다. 처음보는 문자...

var newline = "\n"
print(mychar4, newline, mychar5, newline, mychar4)

// 애플은 코드의 효율성과 실행 성능을 높이기 위해서 변수(var)보다는 상수(let)를 권장

//let myTuple:(Int, Double, String) = (10, 12.1, "Hi")

let myTuple = (count: 10, length: 12.1, message: "Hi")
//var myString = myTuple.2

//print(myString)

print(myTuple.count)
print(type(of: myTuple)) // 자료형 확인이 가능하다.
print(myTuple.0)
print(myTuple.message)

// 옵셔널을 사용할 경우엔 optional(10)로 표현되는데 이때 괄호안의 int 값을 쓸 수 없게 된다.
// 해당 박스를 풀어야지 해당 값을 쓸 수 있게 된다.

// print(Int("100"))//Optional(100) 으로 출력
//print(Int("100")!)//100 으로 출력 가능하다. 신기한데?

//print(Int("Hi")) // nil로 표시

// 값을 반환할 때 오류가 발생할 가능성이 있는 값은 옵셔널 타입이라는 객체로 출력됨

//var x : Int? // 자동적으로 옵셔널 변수는 nil로 들어가게 된다.
//var y : Int = 0
//
//x = 10
//
//print(x) //Optional(100)
//print(x!) // 100, 느김표를 통해 강제 언랩핑을 할 수 있음. 변수에 값이 없을 경우에 앱이 다운이 되버린다.
//print(y)

// x = x+2 //계산이 안됨
// y = x //계산이 안됨
/*
var x : Int?
x = 10
if x != nil {
    print(x!)
}
else {
    print("nil")
}

var x1 : Int?
if x1 != nil {
    print(x1)
}
else {
    print("nil")
}
*/
*/

var x : Int?
var y : Int?

x = 10
y = 20

if let xx = x, let yy = y {
    print(xx,"\n",yy)
    } else {
    print("nil")
}

/*if let yy = y {
    print(yy)
} else {
    print("nil")
}
*/

//var myInt:Int? = nil
//var youtInt:Int = myInt!
//print(youtInt)
//nil 값은 옵셔널 변수가 아니면 저잘될 수 없음.
// 상수나 변수가 값이 없는 상태가 존재한다면 옵셔널 타입으로 선언해야 함.

//클래스 타입검사
/*
class A{
    
}
class B{
    
}
var a : B = B()
if a is A{
    print("Yes")
} else {
    print("No. It contains B")
}

let names:Array = ["A", "B", "C", "D"]
for name in names[...2 ]{
    print(name)
}

let defaultAge = 1
var age : Int?
age = 3
print(age) // optional(3)의 값이 도출됨
var myAge = age ?? defaultAge // age의 값이 nil일 경우 defaultAge가 출력되며, nil이 아닐 경우
// age가 나오는데 이때 옵셔널이 언박싱된다. 그래서 하단에 3의 값이 출력됨
print(myAge) // 3의 값이 도출됨

for index in 1...5{
    print(index)
}

for _ in 1...5{
    print("안녕")
}

for j in 1...5{
    print("\(j) 안녕")
}

let numberOfLegs:Dictionary = ["spider":1, "man":2]

for (animalName, legCount) in numberOfLegs {
    print("\(animalName)의 번호는 \(legCount)입니다.")
}

var myCount:Int = 0
while (myCount < 1000) {
    myCount += 1
//    print(myCount)
}
print(myCount)

var q = 10
repeat {
    q = q-1
    print(q)
} while (q > 0)

            
for u in 1..<10{
    if (u > 7){
        break
    } else{
        print(u)
    }
}
*/
//for r in 1..<11{
//    if r % 2 == 0 {
//        print("숫자 \(r)은 짝수입니다.")
//        //continue
//    } else{
//        print(r)
//    }
//}

//var num:Int = 5
//if (num == 1 || num == 3){
//    print("남성입니다.")
//} else if (num == 2 || num == 4) {
//    print("여성입니다.")
//} else {
//    print("대한민국 국적을 가지지 않았습니다.")
//}
//
//func printName(Firstname:String, LastName:String?){
//    if let lName = LastName{
//        print(lName, Firstname)
//    }else{
//        print("성이 없네요!")
//    }
//    guard let lName = LastName else {
//        print("성이 없네요!")
//        return
//    }
//    print(lName, Firstname)
//}
//printName(Firstname: "길동", LastName: nil)
//
//var value = -1
//switch (value){
//case 0:
//    print("영")
//case 1:
//    print("일")
//case 2:
//    print("이")
//case 3:
//    print("삼")
//default:
//    print("4이상")
//}

var value = 5
//var days:Int = 0
switch(value){
case 1,3,5,7,8,10,12:
    print("31일입니다.")
case 4,6,9,11:
    print("30일입니다.")
case 2:
    print("28일 또는 29일 입니다.")
default:
    print("잘못 입력하셨습니다.")
}

var num : Int = 122
var count : String = ""
switch num {
case 0...9:
    count = "한자리수"
case 10...99:
    count = "두라지수"
case 100...999:
    count = "세자리수"
case 1000...:
    count = "네자리수 이상"
default:
    count = "오류"
}
print("\(count)입니다.")

var temperature = 2
switch (temperature){
case 0...49 where temperature % 2 == 0:
    print("Cold and even")
case 50...79 where temperature % 2 == 0:
    print("Warm and even")
case 80...110 where temperature % 2 == 0:
    print("Hot and even")
default:
    print("Temperature out of range or odd")
}

//함수와 메서드 클러져

func add(first x:Int, second y: Int) -> Int {
    return(x+y)
}
let sum = add(first: 10, second: 20)
//내부 변수 : x, y 외부 변수 : first, second

print(sum)

func add(x: Int, y: Int) -> Int{
    return(x+y)
}

print(add(x: 10, y: 20))

func add(one x: Int, two y: Int) -> Int{
    return(x+y)
}

print(add(one: 10, two: 20))


func add(_ x: Int, _ y: Int) -> Int{
    return(x+y)
}

print(add(50, 20))

func add(_ x: Int, with y: Int) -> Int{
    return(x+y)
}

print(add(100, with: 30))

func converter(length: Float) -> (yards: Float, centimeter: Float, meter: Float) {
    let yards = length * 0.027
    let centimeter = length * 2.54
    let meter = length * 0.0254
    return (yards, centimeter, meter)
}
var lengthTuple = converter(length: 20)
print(lengthTuple.yards)
print(lengthTuple.centimeter)
print(lengthTuple.meter)
print(lengthTuple.yards)

func sss(x:Int, y:Int) -> (sum: Int, sub: Int, div: Double){
    let sum = x+y
    let sub = x-y
    let div = Double(x)/Double(y)
    return(sum, sub, div)
}
var result = sss(x: 10, y: 3)
print(result.sum)
print(result.sub)
print(result.div)
print(String(format: "%.3f", result.div))
print(type(of: sss))

func displayStrings(strings: String...){
    for i in strings{
        print(i)
    }
}

displayStrings(strings: "1","2")


func add(numbersWhat: Int...) {
    var sum: Int = 0
    for num in numbersWhat{
        sum += num
    }
    print(sum)
}
add(numbersWhat: 1,1,1,1,1,1,1,1,1)

func inchesToFeet(inches: Float) -> Float{
    return inches * 0.08333
}
func inchesToYards(inches: Float) -> Float{
    return inches * 0.2777
}
let toFeet = inchesToFeet
let toYard = inchesToYards

func outputConversion(converterFunc:(Float)->Float, value: Float){
    let result = converterFunc(value)
    print("Result = \(result)")
}

outputConversion(converterFunc: toYard, value: 10)
outputConversion(converterFunc: toFeet, value: 10)

//class Man{
//    var age : Int = 1
//    var weight : Double = 3.5
//}
class Man{
    var age : Int?
    var weight : Double!
}


