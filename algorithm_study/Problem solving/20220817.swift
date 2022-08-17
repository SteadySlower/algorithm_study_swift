//
//  20220817.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/17.
//

//// 체육복
//
//import Foundation
//
//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    var count = n
//
//    // 진짜로 잃어버린 사람, 진짜로 빌려줄 수 있는 사람을 구한다.
//    let realLost = lost.filter { !reserve.contains($0) }.sorted()
//    var realReserve = reserve.filter { !lost.contains($0) }.sorted()
//
//    // 진짜로 잃어버린 사람을 순회하면서 체육복을 빌릴 수 없는 사람을 찾는다.
//    for student in realLost {
//        // 자기보다 작은 사이즈 빌릴 수 있음
//        if realReserve.contains(student - 1) {
//            realReserve.removeAll { $0 == student - 1 }
//        // 자기보다 큰 사이즈 빌릴 수 있음
//        } else if realReserve.contains(student + 1) {
//            realReserve.removeAll { $0 == student + 1 }
//        // 빌릴 수 없음
//        } else {
//            count -= 1 //👉 빌릴 수 없다면 수업 들을 수 있는 사람 - 1
//        }
//    }
//
//    return count
//}
//
//print(solution(5, [2, 4], [1, 3, 5]))

//// 최소 직사각형

//import Foundation
//
//extension Array where Element == Int {
//    func turnCard() -> [Int] {
//        return [self.max()!, self.min()!]
//}
//
//func solution(_ sizes:[[Int]]) -> Int {
//    let sizeList = sizes.map { $0.turnCard() }
//
//    var maxW = 0
//    for size in sizeList {
//        maxW = max(size[0], maxW)
//    }
//
//    var maxH = 0
//    for size in sizeList {
//        maxH = max(maxH, size[1])
//    }
//
//    return maxW * maxH
//}

//import Foundation
//
//func solution(_ sizes:[[Int]]) -> Int {
//    var maxMax = 0
//    var maxMin = 0
//
//    for size in sizes {
//        maxMax = max(size.max()!, maxMax)
//        maxMin = max(size.min()!, maxMin)
//    }
//
//    return maxMax * maxMin
//}
