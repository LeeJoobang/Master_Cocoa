//
//  getInterest.swift
//  20211117_Swift_W3D3
//
//  Created by Joobang Lee on 2021/11/17.
//

import Foundation

struct interestManager {
    func getInterestRate(byDay: Int) -> Double {
        switch byDay {
        case 1...90:
            return Double(0.005)
        case 91...180:
            return Double(0.01)
        case 181...364:
            return Double(0.02)
        case 365...:
            return Double(0.056)
        default:
            return Double(0)
        }
    }
    func calculateAmount(day: Int, amount: Int) -> Double{
        let interestRate = getInterestRate(byDay: day)
        return Double(amount) * (1.0 + interestRate)
    }
    func testInterest(unitDay: Int) -> Double{
        return 0.0
    }

}
