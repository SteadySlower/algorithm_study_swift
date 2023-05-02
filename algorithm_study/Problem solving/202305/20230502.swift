//
//  20230502.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/02.
//

//func solution(_ picks:[Int], _ minerals:[String]) -> Int {
//    
//    // 다이아몬드가 많은 순서대로 정렬하는 함수
//    func sort(_ lhs: [Int], _ rhs: [Int]) -> Bool {
//        if lhs[0] != rhs[0] {
//            return lhs[0] > rhs[0]
//        } else if lhs[1] != rhs[1] {
//            return lhs[1] > rhs[1]
//        } else {
//            return lhs[2] > rhs[2]
//        }
//    }
//    
//    // 곡괭이의 갯수만큼 5개씩 광물 묶기
//    var chucks = [[Int]]()
//    var temp = [0, 0, 0]
//    let numOfPicks = picks.reduce(0, +)
//    
//    for mineral in minerals {
//        if chucks.count == numOfPicks { break }
//        
//        if mineral == "diamond" {
//            temp[0] += 1
//        } else if mineral == "iron" {
//            temp[1] += 1
//        } else {
//            temp[2] += 1
//        }
//        if temp.reduce(0, +) == 5 {
//            chucks.append(temp)
//            temp = [0, 0, 0]
//        }
//    }
//    
//    if temp.reduce(0, +) > 0 { chucks.append(temp) }
//    
//    
//    chucks.sort(by: sort)
//    
//    var result = 0
//    var ps = picks
//    for chuck in chucks {
//        if ps[0] > 0 {
//            ps[0] -= 1
//            result += chuck.reduce(0, +)
//        } else if ps[1] > 0 {
//            ps[1] -= 1
//            result += chuck[0] * 5 + chuck[1] + chuck[2]
//        } else if ps[2] > 0 {
//            ps[2] -= 1
//            result += chuck[0] * 25 + chuck[1] * 5 + chuck[2]
//        } else {
//            break
//        }
//    }
//    
//    return result
//}
