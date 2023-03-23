//
//  20230323.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/23.
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

//func solution(_ n:Int) -> [[Int]] {
//
//    var array: [[[Int]]] = [[[]], [[]]]
//    array.append([[1,2], [1,3], [2,3]])
//
//    var i = 2
//    while i != n {
//        i += 1
//
//        let prior = array[i - 1]
//
//        // 1에서 중간 기착지
//        array.append(prior.map { route in
//            let from = route[0]
//            let to = route[1]
//
//
//        })
//
//    }
//
//    return array[n]
//}
