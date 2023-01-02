//
//  20230102.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/02.
//

//func solution(_ gems:[String]) -> [Int] {
//    // 보석의 총 갯수
//    let gemCount = Set(gems).count
//
//    // 현재 범위 (start ~ end)에 어떤 보석이 몇개 있는지
//    var dict = [String:Int]()
//
//    // 범위의 시작과 끝
//    var start = 0
//    var end = -1
//        //❗️end 0으로 하면 (0 ~ 0)인 경우가 valid인지 판단할 수 없으므로 -1에서 시작
//
//    // 범위의 길이 (end - start)의 최솟값을 저장하는 변수
//    var min = Int.max
//
//    // 정답을 저장하는 배열
//    var result = [start + 1, end + 1]
//
//    // 모든 종류의 보석이 포함되어 있는지 확인하는 함수
//        //👉 dict의 key의 갯수 = 모든 보석의 종류의 갯수와 같으면 true
//    func isValid() -> Bool {
//        return dict.count == gemCount
//    }
//
//    while true {
//        // 1. valid한 범위인 경우: start + 1
//        if isValid() {
//            // min 값을 갱신할 수 있다면
//            if end - start < min {
//                result = [start + 1, end + 1] // 정답 갱신
//                min = end - start // min값 갱신
//            }
//            //✅ start + 1 작업 (dict에서 보석 지우기)
//            dict[gems[start]]! -= 1 //👉 dict에서 start에 있던 보석 제거
//            //❗️만약에 dict에서 해당 보석의 갯수가 0이 된다면 nil
//                //👉 nil로 하지 않으면 dict.count에서 key의 갯수로 잡힘
//            if dict[gems[start]]! == 0 {
//                dict[gems[start]] = nil
//            }
//            start += 1
//        // 2. valid하지 않은 범위인 경우: end + 1
//        } else {
//            // end가 끝지점에 도달하면 break
//            if end + 1 == gems.count { break }
//            // ✅ end + 1 작업 (dict에 보석 추가)
//            end += 1
//            dict[gems[end], default: 0] += 1
//        }
//    }
//
//    return result
//}
//
//print(solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]))
