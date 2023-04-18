//
//  20230418.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/18.
//

//func solution(_ cards:[Int]) -> Int {
//
//    // 이미 열린 상자를 담는 집합
//    var opened = Set<Int>()
//
//    // 그룹의 길이를 넣어두는 배열
//    var group = [Int]()
//
//    // 모든 상자를 순회
//    for i in 0..<cards.count {
//        // 이미 열린 상자면 continue
//        if opened.contains(i) { continue }
//
//        // 같은 그룹에 있는 상자 열기
//        var now = i
//        var count = 0
//        // 이미 열린 상자에 숫자가 도달할 때까지 상자 열기
//        while !opened.contains(now) {
//            // 열린 상자 집합에 넣고
//            opened.insert(now)
//
//            // 그룹 길이에 1추가
//            count += 1
//            // 다음 상자
//            now = cards[now] - 1
//        }
//
//        // 한 그룹에 속하는 모든 상자를 찾은 경우 그룹 길이에 push
//        group.append(count)
//    }
//
//    // 비내림차순으로 정렬
//    let sorted = group.sorted(by: >)
//
//    // group의 길이가 1인 경우 (= 1단계에서 게임이 끝나는 경우) 예외처리
//    return sorted.count > 1 ? sorted[0] * sorted[1] : 0
//}
//
//print(solution([8,6,3,7,2,5,1,4]))
