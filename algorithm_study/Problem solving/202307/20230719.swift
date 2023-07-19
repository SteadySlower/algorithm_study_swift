//
//  20230719.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/19.
//

//func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
//
//    // 기본 골자는 완전 탐색
//    // 다만 최대한 탐색 횟수를 줄이기
//        // 1에서 시작해서 구하면 바로 리턴
//        // 멀리갈 수 있는 친구부터 배정
//        // 각각의 시작점은 weak에서 부터
//            // 이미 cover된 weak는 생략
//    // 좌회전, 우회전 고려하기
//
//    // bfs로 가는 것이 좋겠다. (명수 채워지면 바로 리턴하게)
//        // queue에 넣을 것 = 남은 weak들 + 남은 친구들
//        // 한번 pop할 때 weak 별로 + 좌/우로 순회하고 남은 것들 queue에 넣어준다 (+ 다음 친구 index)
//
//
//    return 0
//}
//
//print(solution(12, [1, 5, 6, 10], [1, 2, 3, 4]))
