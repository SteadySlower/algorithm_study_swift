//
//  20221101.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/01.
//

//// 문자열을 다중집합으로 만들어주는 함수 (중복을 허용하므로 Array를 사용)
//func makeSet(_ s: String) -> [String] {
//    // index를 사용하기 위해서 [Character]로 타입 변형
//    let s = s.map { $0 }
//    var set = [String]()
//    for i in 0..<(s.count - 1) {
//        let a = s[i]
//        let b = s[i + 1]
//        // 둘 중에 알파벳이 아닌 문자열을 버리기
//        if !a.isLetter || !b.isLetter { continue }
//        set.append(a.uppercased() + b.uppercased())
//    }
//    return set
//}
//
//// 다중 집합을 Dictionary의 형태로 바꾸는 함수
//func makeDict(_ arr: [String]) -> [String:Int] {
//    var dict = [String:Int]()
//    for s in arr {
//        dict[s, default: 0] += 1
//    }
//    return dict
//}
//
//// 합집합 함수
//    //🚫 처음에는 구현을 해두었으나 (A와 B의 합집합) = A + B - (A와 B의 교집합)이므로 사용하지는 않음
//    //😅 참고를 위해서만 남겨둠
//func union(_ dict1: [String:Int], _ dict2: [String:Int]) -> Int {
//    // 합집합의 원소 갯수
//    var result = 0
//
//    // 다중집합1의 key를 순회하면서
//    for key in dict1.keys {
//        // 다중집합2에도 있는 원소이면 둘 중에 더 큰 갯수를 더한다.
//        if dict2[key] != nil {
//            result += max(dict1[key]!, dict2[key]!)
//        // 다중집합2에 없는 원소이면 다중집합1에 있는 갯수만 더한다.
//        } else {
//            result += dict1[key]!
//        }
//    }
//
//    // 다중집합2의 key를 순회하면서
//    for key in dict2.keys {
//        // 중복되는 것은 앞선 반복문에서 처리했으므로 다중집합2에만 있는 원소의 갯수만 더한다.
//        if dict1[key] == nil {
//            result += dict2[key]!
//        }
//    }
//
//    return result
//}
//
//// 교집합의 갯수를 구하는 함수
//func intersection(_ dict1: [String:Int], _ dict2: [String:Int]) -> Int {
//    var result = 0
//
//    // 다중집합1과 다중집합2에 모두 존재하는 원소는 둘 중에 더 작은 갯수를 더한다.
//    for key in dict1.keys {
//        if dict2[key] != nil {
//            result += min(dict1[key]!, dict2[key]!)
//        }
//    }
//
//    return result
//}
//
//func solution(_ str1:String, _ str2:String) -> Int {
//    let set1 = makeSet(str1)
//    let set2 = makeSet(str2)
//
//    // 둘 다 공집합인 경우 예외 처리
//    if set1.isEmpty && set2.isEmpty { return 65536 }
//
//    let dict1 = makeDict(set1)
//    let dict2 = makeDict(set2)
//
//    let i = intersection(dict1, dict2)
//    // (A와 B의 합집합) = A + B - (A와 B의 교집합)
//    let u = set1.count + set2.count - i
//
//    // Int끼리 나누면 Int가 나오므로 소수점을 얻기 위해서 Double로 타입캐스팅해서 계산하고 반올림을 위해 다시 Int로 캐스팅
//    return Int(Double(i) / Double(u) * 65536)
//}

//print(solution("FRANCE", "french"))
