//
//  main.swift
//  20211204_Swift_W5D6
//
//  Created by Joobang Lee on 2021/12/04.
//

import Foundation

struct twoArray {
//
    func twoArray() -> Array<Array<Int>>{
        var twoArrary:[[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: 5)
        
        let rows = twoArrary.count
        var plusNumber = 0
        
        for i in 0..<rows{
            for j in 0..<rows{
                plusNumber += 1
                if i < j {
//                    continue
                }
                twoArrary[i].append(plusNumber)
            }
        }
        return twoArrary
    }
//
    func printArray (array: [[Int]]) -> Void{
        let row = array.count
        for i in 0..<row {
            print(array[i])
        }
    }
//
}
var myArray = twoArray()
myArray.printArray(array: myArray.twoArray())
