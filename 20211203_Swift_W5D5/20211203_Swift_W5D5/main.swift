//
//  main.swift
//  20211203_Swift_W5D5
//
//  Created by Joobang Lee on 2021/12/03.
//

import Foundation

struct ladderGame{

   static func inputParticipant() -> Int{
        print("사다리 참여 인원", terminator: "")
        
        let input:String = readLine() ?? ""
        let inputNumber: Int = Int(input) ?? -1
        
        switch inputNumber {
        case ...1:
            print("참여 인원은 2명 이상이어야 합니다.")
            
        case 8...:
            print("참여 인원은 7명 이하여야 합니다.")
            
        default:
            return inputNumber
        }
        return -1
    }

    static func printLadder(number: Int, height: Int){
        let cols = number - 1
        let rows = height
        var ladders = [[Int]]()
        ladders = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        
        for i in 0..<rows{
            for j in 0..<cols{
                ladders[i][j] = Int.random(in: 0...1)
            }
        }
        
        for i in 0..<rows{
            for j in 0..<cols{
                if j == 0 {
                    print("|", terminator: "")
                }
                if ladders[i][j] == 0 {
                    print("-|", terminator: "")
                } else {
                    print(" |", terminator: "")
                }
            }
            print("")
        }

    }
}

let participantNumber: Int = ladderGame.inputParticipant()
if participantNumber != -1 {
    ladderGame.printLadder(number: participantNumber, height: 4)
}
