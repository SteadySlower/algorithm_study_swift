//
//  20230419.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/19.
//

//// 정렬 함수
//func sort(_ lhs: [Int], _ rhs: [Int], _ col: Int) -> Bool {
//    let index = col - 1 //👉 col을 index값으로
//
//    // col에 대해서는 오름 차순으로 정렬
//    if lhs[index] < rhs[index] {
//        return true
//    // 다만 col이 같을 때는 기본키에 대해 내림차순
//    } else if lhs[index] == rhs[index] {
//        return lhs[0] > rhs[0]
//    } else {
//        return false
//    }
//}
//
//func solution(_ data:[[Int]], _ col:Int, _ row_begin:Int, _ row_end:Int) -> Int {
//
//    // 원하는 바대로 정렬
//    let sorted = data.sorted { sort($0, $1, col) }
//
//    // S_i를 구하는 연산
//    var S_i = [Int]()
//    for i in row_begin...row_end {
//        let tuple = sorted[i - 1]
//        var result = 0
//        // 나눈 값을 result에 다 더하기
//        for j in tuple {
//            result += j % i
//        }
//        S_i.append(result)
//    }
//
//    // S_i의 모든 값을 XOR 연산해서 리턴
//    return S_i.reduce(0, ^)
//}
//
//print(solution([[2,2,6],[1,5,10],[4,2,9],[3,8,3]], 2, 2, 3))
//
//print(3^5)
