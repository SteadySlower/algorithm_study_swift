//
//  20221104.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/04.
//

//func solution(_ msg:String) -> [Int] {
//    var dict = [String:Int]()
//    let baseAscii = Int(Character("A").asciiValue!)
//
//    for i in 0..<26 {
//        let s = String(UnicodeScalar(baseAscii + i)!)
//        dict[s] = i + 1
//    }
//
//    let msg = msg.map { String($0) }
//    var i = 0
//    var w = ""
//    var c = ""
//    var ans = [Int]()
//
//    //🤔 반복문 내부를 좀 더 명료하게 짜는 방법은 없을까?
//    while i < msg.count {
//        w += msg[i]
//
//        if i < msg.count - 1 {
//            c = w + msg[i + 1]
//        }
//
//        // c가 없는 경우 -> c를 사전에 추가
//        if dict[c] == nil {
//            ans.append(dict[w]!)
//            dict[c] = dict.count + 1
//            w = ""
//            c = ""
//            i += 1
//        // 다음 c를 만들 수 없는 경우 (i + 1이 out of range라서)
//        } else if i == msg.count - 1 {
//            ans.append(dict[c]!)
//            break
//        // dict에 c가 있는 경우 w와 c의 길이 하나 더 추가
//        } else {
//            i += 1
//        }
//    }
//
//    return ans
//}
//
////print(solution("KAKAO"))
//print(solution("ABABABABABABABAB"))
