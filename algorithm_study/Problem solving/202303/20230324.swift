//
//  20230324.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/24.
//

/*
 짝수개인 경우 처음에 목적지가 아닌 곳으로 이동
 홀수개인 경우 처음에 목적지로 이동
 
 2: [ [1,2], [1,3], [2,3] ]
 1 -> 2
 1 -> 3
 2 -> 3
 
 출중
 출목
 중출
 
 3: (2개 짜리를 1에서 2로 옮기고 + 밑판을 3으로 옮기고 + 2개짜리를 2에서 3로 옮긴다)
 
 // 2개짜리를 1에서 2로
 1 -> 3
 1 -> 2
 3 -> 2
 // 밑판을 3으로 이동
 1 -> 3
 // 2개짜리를 2에서 3으로
 2 -> 1
 2 -> 3
 1 -> 3
 
 4: 3개짜리를 1에서 2로 옮기고 + 밑판을 3으로 옮기고 + 3개짜리를 2에서 3으로 옮긴다.
 
 */

// 출발, 중간, 도착으로 배열에 저장하고
// from, to를 넣으면 숫자로 파싱해주는 그런 함수 만들기
// let mid = 6 - from - to

//func makeNewRoute(route: [[Int]], from: Int, to: Int) -> [[Int]] {
//    let mid = 6 - from - to
//
//    return route.map { move in
//        move.map { p in
//            if p == 1 {
//                return from
//            } else if p == 2 {
//                return mid
//            } else {
//                return to
//            }
//        }
//    }
//}
//
//func solution(_ n:Int) -> [[Int]] {
//
//    var ans: [[Int]] = [[1, 3]]
//    var i = 1
//
//    while n != i {
//        i += 1
//        ans = makeNewRoute(route: ans, from: 1, to: 2) + [[1, 3]] + makeNewRoute(route: ans, from: 2, to: 3)
//    }
//
//    return ans
//}

//func hanoi(n: Int, from: Int, to: Int) -> [[Int]] {
//    if n == 1 { return [[from, to]] }
//    let mid = 6 - from - to
//    return hanoi(n: n - 1, from: from, to: mid) + [[from, to]] + hanoi(n: n - 1, from: mid, to: to)
//}
//
//func solution(_ n:Int) -> [[Int]] {
//    return hanoi(n: n, from: 1, to: 3)
//}
//
//print(solution(3))
