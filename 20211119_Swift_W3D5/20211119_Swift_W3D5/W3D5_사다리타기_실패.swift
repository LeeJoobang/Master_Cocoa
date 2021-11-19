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
    
let participantsCount = readLine()

// 1.사다리 인원 입력 처리
// 함수 선언 - 매개변수
if let participantsCount = participantsCount {
    print("참여인원: \(participantsCount)")
    
    let resultCount = Int(participantsCount) ?? 0 // 옵셔널 풀어봄
    //print(type(of: resultCount))
    
    if (resultCount < 2) || (resultCount >= 8) {
        print("참여인원 2명 미만 또는 8명 이상입니다. 인원을 수정해주시기 바랍니다.")
    } else {
        print("해당 인원으로 참여 가능합니다.")
    }
}

// 2. 사다리 출력

let ladderheight : Int = 4
let participantCount : Int = 3
let ladder : String = "|"
let ladderStep : String  = "-"
//func printLadder(ladderheight: Int, participantCount: Int) -> Int {
//
//}
var ladderArray : [[String]] = Array(repeating: Array(repeating: ladder, count: participantCount), count: ladderheight)
print(ladderArray)


//let randomNumber = (Int.random(in: 1...participantCount))
//print(randomNumber)

var plusNumber = 0
for i in 0..<ladderheight{
    let randomNumber = (Int.random(in: 1...participantCount))
    print(randomNumber)
    for _ in 0..<participantCount{
        plusNumber += 1
        print(ladderArray[i].insert("-", at: randomNumber))
    }
    print(ladderArray[i])
}
