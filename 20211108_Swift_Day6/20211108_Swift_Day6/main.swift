//
//  main.swift
//  20211108_Swift_Day6
//
//  Created by Joobang Lee on 2021/11/08.
//

import Foundation

// 변수
var name : String = "joo"
var age : Int = 33
var job = "ios Programmer"
var height : Int = 163

age = 34
age = 46
job = "Professor"

print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)센티미터입니다.")

// Bool

var boolean : Bool = true
boolean.toggle() // ture 값의 반전 함수
let iLoveYou : Bool = true
let isTimeUnlimited : Bool = false
// isTimeUnlimited.toggle() // 상수이기 때문에 해당 함수 적용이 안됨
print("시간은 무한합니까? \(boolean)")

// string
var introduce : String = String() // 공란
print("introduce가 비어있습니까? \(introduce.isEmpty)")

introduce.append("제 이름은")
print(introduce)//제 이름은 을 붙였다.

introduce = introduce + " " + name + "입니다."
print(introduce)

print("name의 글자수 : \(name.count)")

print("introduce가 비어있습니까? \(introduce.isEmpty)")

//bool
let hello : String = "Hello"
var hasPrefix : Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)
// 접두어 확인하는 메소드

var hasSuffix : Bool = false
hasSuffix = hello.hasSuffix("lo")
print(hasSuffix)
//접미어를 확인하는 메소드

var convertedString : String = ""
convertedString = hello.uppercased()
print(convertedString)
//대문자 변경

convertedString = hello.lowercased()
print(convertedString)
//소문자 변경

var greeting : String = "Hello yagom!"
var isEmptyString : Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString)
//공백 유무 확인

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString)
//공백으로 바꿔버림

print(greeting.count) // 0

greeting = "안녕"
print(greeting.count) // 2

greeting = """
안녕하세요. 저는 주입니다.
스위프트를 잘하고 싶습니다.
잘부탁드립니다.
"""

print(greeting)

// 타입의 별칭
typealias myInt = Int
typealias yourInt = Int
typealias myDouble = Double

let Age : myInt = 100
var year : yourInt = 2000

year = Age

let month : Int = 7
let percentage : myDouble = 99.9

// 튜플
var person:(name:String, age:Int, height:Double) = ("joo", 34, 163)

print("이름: \(person.name), 나이: \(person.age), 키: \(person.height) ")

person.1 = 100
person.2 = 190

print("이름: \(person.0), 나이: \(person.1), 키: \(person.2) ")

//튜플 별칭
typealias personTuple = (name: String, age: Int, height: Double)

let joo : personTuple = ("joo", 10, 155.5)
let inae : personTuple = ("Inae", 100, 170.4)

print("이름: \(inae.name), 나이: \(inae.age), 키: \(inae.height)") // 이름: Inae, 나이: 100, 키: 170.4
print("이름: \(joo.name), 나이: \(joo.age), 키: \(joo.height)") // 이름: joo, 나이: 10, 키: 155.5

//배열
var Name: Array<String> = ["joo", "inae", "carry"]

// 동일한 표현 var Name: [String] = ["joo", "inae", "carry"]

var emptyArray : [Any] = [Any]() // Array<Any>()

print(emptyArray.isEmpty)
print(Name.isEmpty)
print(Name.count)

// 배열의 세부사용

print(Name[2])
Name[2] = "out"
print(Name[2])

//Name[3] = "Add"
Name.append("elsa")

print(Name[3])
Name.append(contentsOf: ["john", "max"])
Name.insert("happy", at: 2)

print(Name)

print(Name[4])

/*
 print(Name.first)
print(Name.last)
*/

let firstItem: String = Name.removeFirst()
let lastItem: String = Name.removeLast()
let indexZeroItem: String = Name.remove(at: 0)

print(firstItem)
print(lastItem)
print(indexZeroItem)
print(Name[1...3])

//딕셔너리 생성
//var numberForName : Dictionary<String, Int> = Dictionary<String, Int>()

var numberForName : Dictionary<String, Int> = ["yagom":100, "chulsoo":50, "younghee":10]

print(numberForName.isEmpty)
print(numberForName.count)
//print(numberForName["yagom"])

//set 선언
// var names: Set<String> = Set<String>()
var names: Set<String> = ["yagom", "chulsoo", "younghee"]
print(type(of: names))
print(names.count)
print(names.isEmpty)

names.insert("jenny")
print(names.count)

//if

let first : Int = 10
let second : Int = 10

if first > second {
    print("first > second")
} else if first < second {
    print("first < second")
} else  {
    print("first == second")
}

let third: Int = 5
let forth: Int = 5
var biggerValue: Int = 0

if third > forth {
    biggerValue = third
} else if (third == forth) {
    biggerValue = third
} else if (third < forth) {
    biggerValue = forth
} else if (third == 5) {
    biggerValue = 100
}
print(biggerValue)

//switch
let intergerValue: Int = 5

switch intergerValue {
case 0:
    print("value == zero")
case 1...10:
    print("value == 1~10")
    fallthrough
case Int.min..<0, 101..<Int.max:
    print("value < 0 or value > 100")
    break
default:
    print("10 < value <= 100")
    
// 튜플 스위치
typealias NameAge = (name: String, age: Int)
    
    let tuplevalue: NameAge = ("yagom", 13)

    switch tuplevalue {
    case ("yagom", 13) :
        print("정확하게 맞췄습니다.")
        
    default :
        print("누구를 찾는지요?")
    }
}

//for - in

for i in 0...2 {
    print(i)
}
for i in 0...5 {
    if i.isMultiple(of: 2){
        print(i)
        continue
    }
    print("\(i) == 홀수")

}

let helloSwift: String = "Hello Swift"

for char in helloSwift{
    print(char)
}

var result : Int = 1

for _ in 1...3{
    result *= 10
}

print("10의 3제곱은 \(result)입니다.")

let friends : [String:Int] = ["jay":10, "joe" : 100, "jez": 1000]

for tuples in friends {
    print(tuples)
}

func hello(name: String) -> String{
    return "Hello \(name)"
}

let hellojoo:String = hello(name: "Joo")
print(hellojoo)

func introduce(name: String) -> String{
    "Hello. My name is \(name)"
}

let mynameis:String = introduce(name: "inae")

print(mynameis)

func helloworld() -> String {
    return "Hello, world"
}

print(helloworld())

//func sayHello(myName: String, yourname: String) -> String{
//    return "hello \(yourname)! i'm \(myName)"
//}
//
//print(sayHello(myName: "주영", yourname: "인애"))


func sayHello(_ name: String, _ times: Int = 3) -> String{
    var result:String = ""
    for _ in 0..<times{
        result += "Hello \(name)!" + " "
    }
    return result
}

print(sayHello("Joo"))
print(sayHello("Joo",2))

var gomName:String? = "Yajom"
//print(gomName)

gomName = nil

//print(gomName)

struct basicInformation {
    var name: String
    var age: Int
}

var yagomInfo: basicInformation = basicInformation(name: "yagom", age: 100)

yagomInfo.name = "Joo"
yagomInfo.age = 50

print(yagomInfo.name)

