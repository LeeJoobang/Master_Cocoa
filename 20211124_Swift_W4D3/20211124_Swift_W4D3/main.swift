//
//  main.swift
//  20211124_Swift_W4D3
//
//  Created by Joobang Lee on 2021/11/24.
//

import Foundation

print("Hello, World!")
/* 연습문제 2차원 배열

 미션1. printXY() max=3
*/

func printXY(max : Int){
    for _ in 1...max{
//        print(i, terminator: " ")
        for j in 1...max{
            print(j, separator: "", terminator: " ")
        }
     print("")
    }
}

printXY(max: 5)

// 미션 2
/*미션2. printLeftTree()
다음과 같이 출력을 하는 함수를 작성하세요.

func printLeftTree(lines : Int)

lines = 5
*/

// 이럴 경우에는 i의 위치를 반영해야 한다.
func printLeftTree(lines : Int){
    for i in 1...lines{
        for _ in 1...i{
                print("q", separator: "", terminator: " ")
        }
       print("")
    }
}
printLeftTree(lines: 5)

//미션3. printRightTree()

func printRightTree(lines : Int){
    for i in 1...lines{
        for j in 1...lines{
            if j <= lines - i{
                print(" ", terminator: "")
            } else {
                print(j, terminator: " ")
            }
        }
        print("")
    }
}
printRightTree(lines: 5)

/*
 다음과 같이 출력을 하는 함수를 작성하세요.

 func printNumbers(lines : Int)

 lines = 5
 1
 2  3
 4  5  6
 7  8  9  10
 11 12 13 14 15
 */


func printNumbers(lines : Int){
    var number : Int = 1
    for i in 1...lines{
        for _ in 1...i{
            print(number, terminator: " ")
            number += 1
        }
        print("")
    }
}

printNumbers(lines: 5)
