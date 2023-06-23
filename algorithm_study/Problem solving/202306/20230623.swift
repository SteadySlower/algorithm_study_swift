//
//  20230623.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/23.
//

//func solution(_ targets:[[Int]]) -> Int {
//    
//    func getOverlappingRange(_ range1: [Int], _ range2: [Int]) -> [Int]? {
//        if range2[0] < range1[1] {
//            return [range2[0], min(range1[1], range2[1])]
//        } else {
//            return nil
//        }
//    }
//    
//    let targets = targets.sorted { t1, t2 in
//        if t1[0] == t2[0] {
//            return t1[1] < t2[1]
//        } else {
//            return t1[0] < t2[0]
//        }
//    }
//    
//    var ans = 1
//    var now = targets[0]
//    
//    for i in 1..<targets.count {
//        if let overlappingRange = getOverlappingRange(now, targets[i]) {
//            now = overlappingRange
//        } else {
//            now = targets[i]
//            ans += 1
//        }
//    }
//    
//    return ans
//}
