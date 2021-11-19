//
//  main.swift
//  2021115_W3_D1
//
//  Created by Joobang Lee on 2021/11/15.
//

import Foundation


//복습 inch to cm
func convertToCM(fromInches : Float) -> Float{
    return fromInches * 2.54
}
print(convertToCM(fromInches: 50))
print(convertToCM(fromInches: 15))

func convertToInches(fromCM : Float) -> Float{
    return fromCM / 2.54
}
print(convertToInches(fromCM: 254))
print(convertToInches(fromCM: 75))

func convertToInches(fromMeter : Float) -> Float{
    return fromMeter * 10
}
print(convertToInches(fromMeter: 1.5))
print(convertToInches(fromMeter: 0.4))
/*
//rectangle
struct intRectangle{
    var leftTopX : Int
    var leftTopY : Int
    var rightBottomX : Int
    var rightBottomY : Int
    
    func printRect(){
        print("Left Top: \(leftTopX), y:\(leftTopY)")
        print("Left Bottom: \(leftTopX), y:\(rightBottomY)")
        print("Right Top: \(rightBottomX), y:\(leftTopY)")
        print("Right Bottom: \(rightBottomX), y:\(rightBottomY)")
    }
    func intPrintArea(){
        let width = leftTopX - rightBottomX
        let height = leftTopY - rightBottomY
        print("width : \(width), height : \(height)")
    }
}

let rect = intRectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)//상수를 선언해준다.
rect.printRect()//선언된 상수 내 스트럭트 내부에서 작성한 함수를 불러준다.
rect.intPrintArea()
*/
//float rectangle
struct intRectangle{
    var leftTopX : Float // int
    var leftTopY : Float
    var rightBottomX : Float
    var rightBottomY : Float
    
    func printRect(){
        print("Left Top: \(leftTopX), y:\(leftTopY)")
        print("Left Bottom: \(leftTopX), y:\(rightBottomY)")
        print("Right Top: \(rightBottomX), y:\(leftTopY)")
        print("Right Bottom: \(rightBottomX), y:\(rightBottomY)")
    }
    func intPrintArea(){
        let width = leftTopX - rightBottomX
        let height = leftTopY - rightBottomY
        print("width : \(width), height : \(height)")
    }
    func printCenter(){
        let centerPointX = (leftTopX + rightBottomX) / 2
        let centerPointY = (leftTopY + rightBottomY) / 2
        print("CenterX: \(centerPointX), CenterY: \(centerPointY)")
    }
}

let rect = intRectangle(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15.0, rightBottomY: 3.5)
//상수를 선언해준다.
rect.printRect()//선언된 상수 내 스트럭트 내부에서 작성한 함수를 불러준다.
rect.intPrintArea()
rect.printCenter()

//미션 2
struct MyPoint{
    var myX : Float = 0
    var myY : Float = 0
    
    func printPoint(){
        print("X:\(myX), Y:\(myY)")
    }
}
let pointA = MyPoint(myX: 2.5, myY: 15.8)

pointA.printPoint()


//
extension Double{
    var squard : Double {
        return self*self
    }
}
let aa = 3.0
print(aa.squard)

//1주 수요일 과제 복습
// 연습문제
// 미션1. printXY()
func printXY(max : Int){
    for _ in 1...max{
        for num in 1...max{
            print("\(num)", terminator:"")
        }
        print("")
    }
}
printXY(max: 3)

// 미션2. printLeftTree()
func printLeftTree(lines : Int){
    for Balloon in 1...lines{
        for _ in 1...Balloon{
            print("🎈", terminator: "")
        }
        print("")
    }
}
printLeftTree(lines: 5)

// 미션3. printRightTree()
func printRightTree(lines : Int){
    for i in 1...lines{
        for Balloon in 1...lines{
            if Balloon <= lines - i {
                print(" ", terminator: " ")
            } else {
                print("🎈", terminator: "")
            }
        }
        print()
    }
}
printRightTree(lines: 4)

//미션5. printNumbers()
func printNumbers(lines : Int){
    var number = 1
    for j in 1...lines{
        for _ in 1...j{
            print(number, terminator: " ")
            number += 1
            }
        print()
        }
    }
printNumbers(lines: 5)

// 미션6. printSquare()
func printSquare(columns : Int){
    var number1 = 1
    for _ in 1...columns{
        for _ in 1...columns{
           print(number1, terminator: " ")
            number1 += 1
        }
        print()
    }
}
printSquare(columns: 5)

//구구단

    for i in 2...3{
        for j in 1...10{
            print("\(i)*\(j) = \(i*j)")
        }
    }

// 배열

struct ArrayPractice {
    func printArray(array: [[Int]]) {
        for innerArray in array {
            print(innerArray)
        }
    }
    
    func fillArray()->[[Int]] {
        let maxLine = 5
        var resultArray = [[Int]]()
        for line in 1...maxLine {
            var tempArray = [Int]()
            var count = (line-1) * maxLine + 1
            for _ in 1...line {
            tempArray.append(count)
            count += 1
        }
        resultArray.append(tempArray)
        }
        return resultArray
    }
}

var myArray = ArrayPractice()

//20211117_Wed

