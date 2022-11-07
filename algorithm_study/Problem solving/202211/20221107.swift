//
//  20221107.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/07.
//

//func solution(_ msg:String) -> [Int] {
//    // A ~ Z까지 사전 초기화 하기
//    var dict = [String:Int]()
//    let baseAscii = Int(Character("A").asciiValue!)
//    for i in 0..<26 {
//        let s = String(UnicodeScalar(baseAscii + i)!)
//        dict[s] = i + 1
//    }
//
//    // index로 탐색할 수 있도록 Array로 바꾸기
//    let msg = msg.map { String($0) }
//
//    // i는 c의 index
//    var i = 1
//    // w에 첫 글자 세팅
//    var w = msg[0]
//
//    // 정답을 저장할 배열
//    var ans = [Int]()
//
//    while i < msg.count {
//        let c = msg[i]
//        let wc = w + c
//
//        // wc가 사전에 없는 경우
//        if dict[wc] == nil {
//            ans.append(dict[w]!) // 출력하고
//            dict[wc] = dict.count + 1 // 사전에 wc를 추가한다.
//            w = c // w는 다음 글자인 c
//            i += 1 // 다음 c의 index는 뒤로 하나 이동
//            continue
//        }
//
//        // 사전에 있는 경우 w에 c를 더하고 다시 탐색
//        w = wc
//        i += 1
//    }
//
//    // 다음 c가 없을 때 마지막에 남은 w 출력
//    ans.append(dict[w]!)
//
//    return ans
//}
//
//print(solution("KAKAO"))
////print(solution("ABABABABABABABAB"))
