//
//  20230404.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/04.
//

//func solution(_ storey:Int) -> Int {
//
//    var storey = storey
//    var ans = 0
//
//    // 0층에 도착할 때까지 반복
//    while storey != 0 {
//
//        // 1의 자리수
//        let now = storey % 10
//        // 10의 자리수
//        let next = (storey / 10) % 10
//
//        // 1의 자리 수가 5보다 크면 더해서 올림
//        if now > 5 {
//            ans += 10 - now
//            storey += 10
//        // 1의 자리 수가 5보다 작으면 빼서 내림
//        } else if now < 5 {
//            ans += now
//        // 1의 자리 수가 5면 다음 자릿수가 5 이상이면 올리고 아니면 내림
//        } else {
//            ans += 5
//            storey += next >= 5 ? 10 : 0
//        }
//
//        // 마지막 자리 수는 0이 되었으므로 (= 버튼을 누를 필요 없으므로) 제거
//        storey /= 10
//    }
//
//
//    return ans
//}
//
//print(solution(2554))
