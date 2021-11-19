//
//  main.swift
//  20211119_Swift_W3D5
//
//  Created by Joobang Lee on 2021/11/19.
//

import Foundation

/* 사다리타기 조건
1. 사다리 인원 입력
 - readline()으로 참여 인원 입력 받기 - 완료

 - 만약 인원 2 미만, 8 이상일 경우 아웃
 -> 받은 값을 스트링에서 int로 변환해주기
 -> break처리 하는 것은 어떨지
2. 사다리 출력
 - 높이 4개
 - 참여 인원과 높이를 매개변수로 받아 출력하는 printLadder()함수 작성
 - 가로 개수는 참여인원 -1, 세로 개수는 사다리 높이와 동일한 Int타입 2차원 배열 만들기
 - int.random()으로 랜덤하게 사다리 발판이 있으면 -를 출력
 - 없으면 공백, 발판 사이는 |
 - 실행해서 콘솔에 출력되는지 확인
*/
    
struct LadderGame {
    static func participantCount() -> Int {
        print("참가인원을 입력해주세요 : ", terminator: "")
        
        let inputCount : String = readLine() ?? ""
        let resultParticipant : Int = Int(inputCount) ?? -1
        
        switch resultParticipant {
        case ...1:
            print("참여인원은 2명 이상이어야 합니다.")
        case 8...:
            print("참여인원은 7명 이하이어야 합니다.")
        default:
            return resultParticipant
        }
        return -1
    }
    
    static func printLadder(number: Int, height: Int) {
        let cols = number - 1
        let rows = height
        
        var ladder = [[Int]]()
        ladder = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        
        for i in 0..<rows{
            for j in 0..<cols{
                ladder[i][j] = Int.random(in: 0...1)
            }
        }
        
        for i in 0..<rows{
            for j in 0..<cols{
                if j == 0 {
                    print("|", terminator: "")
                }
                if ladder[i][j] == 0{
                    print("-|", terminator: "")
                } else {
                    print(" |", terminator: "")
                }
            }
            print("")
        }
    }
}

let participantNumber: Int = LadderGame.participantCount()
if participantNumber != -1{
    LadderGame.printLadder(number: participantNumber, height: 4)
}
