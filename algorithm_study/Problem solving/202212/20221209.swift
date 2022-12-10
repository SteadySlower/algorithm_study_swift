//
//  20221209.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/10.
//

//func solution(_ n:Int) -> [Int] {
//    var array = Array(repeating: Array(repeating: 0, count: n), count: n)
//    var i = -1
//    var j = 0
//    var num = 1
//
//    // 총 n번의 방향 전환
//    for k in 0..<n {
//        // 방향 전환할 때마다 길이는 1씩 줄어들음
//        for _ in 0..<(n - k) {
//            // 방향 (아래 -> 오른쪽 -> 위)를 순환하므로 k를 기준으로 3으로 나눈 나머지를 사용하면 된다.
//            if k % 3 == 0 {
//                i += 1 //👉 아래
//            } else if k % 3 == 1 {
//                j += 1 //👉 오른쪽
//            } else {
//                i -= 1
//                j -= 1 //👉 위
//            }
//            array[i][j] = num
//            num += 1
//        }
//    }
//
//    return array.reduce([], { $0 + $1.filter { $0 != 0 } })
//}
//
//print(solution(4))

//func isMatch(_ id: String, _ starred: String) -> Bool {
//
//    guard id.count == starred.count else { return false }
//
//    var id = id.map { $0 }
//    var starred = starred.map { $0 }
//
//    for i in 0..<id.count {
//        if starred[i] == "*" { continue }
//        if id[i] != starred[i] { return false }
//    }
//
//    return true
//}
//
//func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
//
//    var user_id = user_id
//    let origin = banned_id
//    var banned_id = banned_id
//    var ids = [String]()
//    var cases = Set<String>()
//
//
//    // 어떤 느낌인지 알겠지? 중복 체크!!!
//    for _ in 0..<user_id.count {
//        for user in user_id {
//            for ban in banned_id {
//                if isMatch(user, ban) {
//                    ids.append(user)
//                    let index = banned_id.firstIndex(where: { $0 == ban })!
//                    banned_id.remove(at: index)
//                    break
//                }
//            }
//        }
//        cases.insert(ids.sorted().reduce("", +))
//        ids = [String]()
//        user_id.append(user_id.removeFirst())
//        banned_id = origin
//    }
//
//    print(cases)
//
//    return cases.count
//}

//print(isMatch("frodo", "fr*d*"))
//print(isMatch("frodo", "****j"))
//print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"]))
