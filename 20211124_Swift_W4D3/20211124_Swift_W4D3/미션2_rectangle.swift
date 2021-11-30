//
//  미션2_rectangle.swift
//  20211124_Swift_W4D3
//
//  Created by Joobang Lee on 2021/11/24.
//

import Foundation

struct myPoint{
    var myX : Float
    var myY : Float

    
    func printPoint(){
        print("\(myX), \(myY)")
    }
    
    //구조체의 매서드가 구조체 내부에서 데이터 수정 할떄는 Mutating키워드를 선언 해주어야함
    mutating func setX(x: Float){
        self.myX = x
    }
    
    mutating func setY(y: Float){
        self.myY = y
    }
    
    
}

var pointA = myPoint(myX: 2.5, myY: 15.8)
pointA.printPoint()

pointA.setX(x: 15.2)
pointA.setY(y: 7.4)
print(pointA.printPoint())
print("pointA=(\(pointA.myX), \(pointA.myY))")

//메소드 추가히기
/*
 setX(x : Float) 메서드와 setY(y: Float) 메서드를 추가하세요.
setX는 myX값을 x로 바꾸고, setY는 myY값을 y로 바꾸세요.
setX(x:15.2)와 setY(y:7.4)를 호출하세요.
직접 print(“pointA=( )”) 형태로 x와 y 값을 가져와서 출력하세요.

 미션3. 계산하기
 다른 점과의 거리를 계산하기 위해서 getDistanceTo(toPoint : MyPoint)->Float 메서드를 추가하세요.
 - Float sqrt(Float) 함수 사용

 새로운 점(15f, 12.2f) pointB 인스턴스를 추가하고
 getDistanceTo() 메서드에 매개변수로 넘겨 결과값을 출력하세요.
 
 
 */

