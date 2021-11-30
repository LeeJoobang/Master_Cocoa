//
//  main.swift
//  20211130_Swift_W5D2
//
//  Created by Joobang Lee on 2021/11/30.
//

import Foundation
// 가위바위보

func getUserChoice(userInput: String) -> String {
  if userInput == "주먹" || userInput == "가위" || userInput == "보"  {
    return userInput;
  } else {
    return "가위, 바위, 보를 내야합니다."
  }
}

func getComputerChoice() ->  String {
  let random = Int.random(in: 0...2)
  
  switch random {
    case 0:
      return "주먹"
    case 1:
      return "가위"
    case 2:
      return "보"
    default:
     return "해당없음"
  }
}


func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  
  var decision: String = "비김"
  
  switch userChoice {
    case "주먹":
      if compChoice == "보" {
        decision = "컴퓨터 승리"
      } else if compChoice == "가위"{
        decision = "유저 승리"
      }

    case "보":
      if compChoice == "주먹" {
        decision = "유저 승리"
      } else if compChoice == "가위"{
        decision = "컴퓨터 승리"
      }

    case "가위":
      if compChoice == "바위" {
        decision = "컴퓨터 승리"
      } else if compChoice == "보" {
        decision = "유저 승리"
      }
    default:
      print("오류")
  }
  return decision
}

let userChoice = getUserChoice(userInput: "가위")
let compChoice = getComputerChoice()

print("나: \(userChoice)")
print("컴퓨터: \(compChoice)")
print(determineWinner(userChoice, compChoice))
