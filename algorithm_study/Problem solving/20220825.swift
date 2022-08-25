//
//  20220825.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/25.
//

//// 단어 변환
//
//func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
//    // from에서 to로 변환할 수 있는 글자인지 확인하는 함수
//        //🚫 처음에 여기 차집합으로 했다가 틀림 (동일한 알파벳이 동일한 '위치'에 있어야 하므로 순서가 중요함)
//        // + Array로 바꾸니까 실행속도도 엄청 빨라짐
//    func isChangeable(_ from: String, _ to: String) -> Bool {
//
//        var difference = from.count
//        // String은 subscript로 접근할 수 없으니 Array로 형변환
//        let from = Array(from)
//        let to = Array(to)
//
//        // 한글자씩 비교
//        for i in 0..<from.count {
//            if from[i] == to[i] { difference -= 1 }
//        }
//
//        // 차이가 1이면 true
//        return difference == 1 ? true : false
//    }
//
//    // dfs 구현
//    func dfs(_ now: String, _ depth: Int) {
//        // 탈출조건: now가 target과 동일하면
//        if now == target {
//            ans = min(depth, ans) //👉 현재까지의 변환횟수를 ans와 비교해서 최솟값 저장
//            return
//        }
//
//        // 모든 words를 순환하면서 미방문 + 변환가능한 단어에서 dfs 실행
//        for i in 0..<words.count {
//            if !visited[i] && isChangeable(now, words[i]) {
//                visited[i] = true
//                dfs(words[i], depth + 1)
//                visited[i] = false
//            }
//        }
//    }
//
//    var ans = Int.max
//    var visited = Array(repeating: false, count: words.count)
//
//    // target이 words에 없으면 return 0
//    guard words.contains(target) else { return 0 }
//
//    dfs(begin, 0)
//
//    return ans
//}

//// 네트워크
//
//func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//    // 네트워크 개수를 기록할 변수와 방문 체크 배열
//    var result = 0
//    var visited = Array(repeating: false, count: n)
//
//    // dfs 구현
//    func dfs(_ now: Int) {
//        // 모든 node에 대해서 연결된 node && 아직 미방문 node가 있으면 dfs
//        for i in 0..<computers.count {
//            if computers[now][i] == 1 && !visited[i] {
//                visited[i] = true //👉 방문한 곳에는 방문체크
//                dfs(i)
//            }
//        }
//    }
//
//    // 모든 미방문 node에 대해 dfs 실시
//    for i in 0..<computers.count {
//        if !visited[i] {
//            dfs(i)
//            result += 1
//        }
//    }
//
//    return result
//}
