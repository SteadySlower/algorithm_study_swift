//
//  20221212.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/12.
//

//// id와 *처리 된 단어가 일치하는지 확인하는 함수
//func isMatch(_ id: String, _ banned: String) -> Bool {
//    // 길이가 다르면 false
//    guard id.count == banned.count else { return false }
//
//    // 한 글자씩 비교
//    for (char1, char2) in zip(id, banned) {
//        // "*"일 경우에는 비교하지 않음
//        if char2 == "*" { continue }
//        // "*"이 아닌 부분이 다를 경우 false
//        if char1 != char2 { return false }
//    }
//
//    // 반복문을 통과하면 (= "*"를 제외한 부분이 동일하면) true 리턴
//    return true
//}
//
//// 순열 구하는 함수
//func permutation(_ array: [String], _ length: Int) -> [[String]] {
//    var result = [[String]]()
//    var visited = Array(repeating: false, count: array.count)
//
//    func permute(_ now: [String]) {
//        if now.count == length {
//            result.append(now)
//            return
//        }
//
//        for i in 0..<array.count {
//            if !visited[i] {
//                visited[i] = true
//                permute(now + [array[i]])
//                visited[i] = false
//            }
//        }
//    }
//
//    permute([])
//    return result
//}
//
//func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
//    // "아이디의 목록"은 순서에 관계 없음 -> Set<String> = id끼리 중복되면 안됨
//    // ids(순열)과 banned_id를 비교하는 과정에서 중복된 "아이디의 목록"이 나올 수 있음 -> Set<Set<String>> = "id의 목록"끼리 중복되면 안됨
//    var ans = Set<Set<String>>()
//
//    // user_id를 순열로 만들어서 id의 목록 만들기
//    for ids in permutation(user_id, banned_id.count) {
//        var count = 0 // ids[i]가 banned_id[i]와 일치하는 갯수
//        for (id, banned) in zip(ids, banned_id) {
//            if isMatch(id, banned) {
//                count += 1
//            }
//        }
//        // banned_id와 일치하면 ids를 Set으로 바꾸어서 ans에 추가
//        if count == banned_id.count {
//            ans.insert(Set(ids))
//        }
//    }
//
//    return ans.count
//}

//print(isMatch("frodo", "fr*d*"))
//print(isMatch("frodo", "****j"))
//print(permutation(["frodo", "fradi", "crodo", "abc123", "frodoc"], 4))
//print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"]))
//print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"]))


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
//    var origin = banned_id
//    var banned_id = banned_id
//    var ids = [String]()
//    var cases = Set<String>()
//
//
//    // 어떤 느낌인지 알겠지? 중복 체크!!!
//    for _ in 0..<user_id.count {
//        for _ in 0..<banned_id.count {
//            for user in user_id {
//                for ban in banned_id {
//                    if isMatch(user, ban) {
//                        ids.append(user)
//                        let index = banned_id.firstIndex(where: { $0 == ban })!
//                        banned_id.remove(at: index)
//                        break
//                    }
//                }
//            }
//            cases.insert(ids.sorted().reduce("", +))
//            ids = [String]()
//            origin.append(origin.removeFirst())
//            banned_id = origin
//        }
//        user_id.append(user_id.removeFirst())
//    }
//
//    return cases.count
//}
