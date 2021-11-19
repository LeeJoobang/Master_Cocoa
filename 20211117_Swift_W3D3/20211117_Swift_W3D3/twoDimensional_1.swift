//
//  main.swift
//  20211117_Swift_W3D3
//
//  Created by Joobang Lee on 2021/11/17.
//

import Foundation


//2차원 배열
//mission 1

struct arrayPractice{
    func fillArray() -> Array<Array<Int>>{
        var addArray:[[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: 5)
        /*
         []
         []
         []
         []
         []
        */
        let rows = addArray.count
        print(rows)//5
        var plusNumber = 0

        for i in 0..<rows{
            for _ in 0..<rows{
                plusNumber += 1
//                if i < j {
//                    continue
//                }
                addArray[i].append(plusNumber)
            }
        }
        return addArray
    }
    func printArray (array: [[Int]])->Void{
        let row = array.count
        for i in 0..<row{
            print(array[i])
        }
    }

}
