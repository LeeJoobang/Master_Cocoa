//
//  main.swift
//  20211130_Swift_W5D2
//
//  Created by Joobang Lee on 2021/11/30.
//
import Foundation


func getUserChoice()->String{
    let userInput = readLine()!
    if userInput == "rock" || userInput == "scissor" || userInput == "paper"{
        return userInput
    } else {
        return ""
    }
}

func getComputerChoice() ->  String {
  let random = Int.random(in: 0...2)
  
  switch random {
    case 0:
      return "rock"
    case 1:
      return "scissor"
    case 2:
      return "paper"
    default:
     return "해당없음"
  }
}

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  var decision: String = ""

    switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "컴퓨터 승리 -> 컴퓨터 공격"
      } else if compChoice == "scissor"{
        decision = "유저 승리 -> 유저 공격"
      } else if compChoice == "rock"{
          decision = "비김"
      }

    case "paper":
      if compChoice == "rock" {
        decision = "유저 승리 -> 유저 공격"
      } else if compChoice == "scissor"{
        decision = "컴퓨터 승리 -> 컴퓨터 공격"
      } else if compChoice == "paper"{
          decision = "비김"
      }

    case "scissor":
      if compChoice == "rock" {
        decision = "컴퓨터 승리 -> 컴퓨터 공격"
      } else if compChoice == "paper" {
        decision = "유저 승리 -> 유저 공격"
      } else if compChoice == "scissor" {
          decision = "비김"
      }
    
    default :
        decision = "해당없음"
        return decision
  }
  return decision
}


var resultbool: Bool = true

func getMukjjibba(_ resultvalue: String, _ userChoice: String, _ compChoice: String) -> String{
    
    var result: String = ""
    print(resultvalue)
    
    
    switch resultvalue {
        case "컴퓨터 승리 -> 컴퓨터 공격" :
//        print("컴퓨터 공격을 시작합니다.")
//        print("컴퓨터 확인 데이터: \(compChoice)")
//        print("유저 확인 데이터: \(userChoice)")
            switch compChoice{
                case "rock":
                    if userChoice == "rock"{
                        result = "컴퓨터 승리"
                        resultbool = false
                    } else if userChoice == "scissor" {
                        result = "컴퓨터 공격"
                        resultbool = true
                    } else if userChoice == "paper"{
                        result = "유저 공격"
                        resultbool = true
                    }
                case "scissor":
                    if userChoice == "paper"{
                        result = "컴퓨터 공격"
                        resultbool = true
                    } else if userChoice == "rock"{
                        result = "유저 공격"
                        resultbool = true
                    } else if userChoice == "scissor"{
                        result = "컴퓨터 승리"
                        resultbool = false
                    }
                case "paper":
                    if userChoice == "rock"{
                        result = "컴퓨터 공격"
                        resultbool = true
                    } else if userChoice == "scissor"{
                        result = "유저 공격"
                        resultbool = true
                    } else if userChoice == "paper"{
                        result = "컴퓨터 승리"
                        resultbool = false
                    }
                default:
                    print("")
                    resultbool = true
                }
       
        case "유저 승리 -> 유저 공격" :
//        print("유저 공격을 시작합니다.")
//        print("유저 확인 데이터: \(userChoice)")
//        print("컴퓨터 확인 데이터: \(compChoice)")
        switch userChoice{
            case "rock":
                if compChoice == "rock"{
                    result = "유저 승리"
                    resultbool = false
                } else if compChoice == "scissor" {
                    result = "유저 공격"
                    resultbool = true
                } else if compChoice == "paper"{
                    result = "컴퓨터 공격"
                    resultbool = true
                }
            case "scissor":
                if compChoice == "paper"{
                    result = "유저 공격"
                    resultbool = true
                } else if compChoice == "rock"{
                    result = "컴퓨터 공격"
                    resultbool = true
                } else if compChoice == "scissor"{
                    result = "유저 승리"
                    resultbool = false
                }
            case "paper":
                if compChoice == "rock"{
                    result = "유저 공격"
                    resultbool = true
                } else if compChoice == "scissor"{
                    result = "컴퓨터 공격"
                    resultbool = true
                } else if compChoice == "paper"{
                    result = "유저 승리"
                    resultbool = false
                }
                
            default:
                print("")
                resultbool = true
            }
        
        case "비김":
        //result = "비김"
        resultbool = true
        
        default:
        print("")
        resultbool = true
    }
    
    return result
}

print("==================================")
print("          선공을 정하겠습니다.")
print("==================================")
print("\n")

let userChoice = getUserChoice()
let compChoice = getComputerChoice()
let decision = determineWinner(userChoice, compChoice)
let mukjjibba = getMukjjibba(decision, userChoice, compChoice)

print("==================================")
print("나: \(userChoice)")
print("컴퓨터: \(compChoice)")
print("==================================")
print(decision)
if decision == "유저 승리 -> 유저 공격" || decision == "컴퓨터 승리 -> 컴퓨터 공격"{
    print("묵찌빠를 진행합니다.")
    while resultbool{
        let userChoice = getUserChoice()
        let compChoice = getComputerChoice()
        print("나: \(userChoice)")
        print("컴퓨터: \(compChoice)")
        print(getMukjjibba(decision, userChoice, compChoice))
    }
} else{
    print("다시 가위 바위 보를 진행합니다.")
}
print("==================================")
