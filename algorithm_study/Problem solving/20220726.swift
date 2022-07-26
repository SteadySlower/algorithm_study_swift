//
//  20220726.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/26.
//

// 스타트링크

//// 조합 구현
//func combination(of array: [Int], length: Int) -> [[Int]] {
//    var result = [[Int]]()
//
//    func combi(index: Int, _ now: [Int]) {
//        if now.count == length {
//            result.append(now)
//            return
//        }
//
//        for i in index..<array.count {
//            combi(index: i + 1, now + [array[i]])
//        }
//    }
//
//    combi(index: 0, [])
//
//    return result
//}
//
//// 빼기 구현: 1팀 정해지면 2팀의 멤버를 구하기 위해
//extension Array where Element == Int {
//    static func -(lhs: [Int], rhs: [Int]) -> [Int] {
//        lhs.filter { i in
//            !rhs.contains(i)
//        }
//    }
//}
//
//// 점수를 계산하는 함수
//func teamScore(of team: [Int]) -> Int {
//    var result = 0
//    // 점수 더하기 (i == j일 때는 0이므로 예외처리 x)
//    for i in team {
//        for j in team {
//            result += matrix[i][j]
//        }
//    }
//    return result
//}
//
//
//// 입력 받기
//let N = Int(readLine()!)!
//
//// 멤버 0 ~ N - 1까지 생성
//var members = [Int]()
//for i in 0..<N {
//    members.append(i)
//}
//
//// 능력치를 저장하는 이차원 배열
//var matrix = [[Int]]()
//for _ in 0..<N {
//    matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//}
//
//// 정답 (최솟값이므로 초기값은 Int.max)
//var ans = Int.max
//
//// 조합을 통해서 모든 팀의 경우의 수를 구하고 점수를 계산해서 최소한의 차이 구하기
//for team in combination(of: members, length: Int(N / 2)) {
//    let score1 = teamScore(of: team)
//    let score2 = teamScore(of: members - team)
//    ans = min(abs(score1 - score2), ans)
//}
//
//print(ans)

//// dfs로 풀기
//
//// 점수를 계산하는 함수
//func teamScore(of team: [Int]) -> Int {
//    var result = 0
//    // 점수 더하기 (i == j일 때는 0이므로 예외처리 x)
//    for i in team {
//        for j in team {
//            result += matrix[i][j]
//        }
//    }
//    return result
//}
//
//// 입력 받기
//let N = Int(readLine()!)!
//let teamNumber = Int(N / 2)
//
//// 능력치를 저장하는 이차원 배열
//var matrix = [[Int]]()
//for _ in 0..<N {
//    matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//}
//
//// 1번 팀인지 아닌지 저장하는 배열 (방문체크배열)
//var isTeam1 = Array(repeating: false, count: N)
//
//// 정답 (최솟값이므로 초기값은 Int.max)
//var ans = Int.max
//
//// dfs 구현
//func dfs(_ depth: Int, _ index: Int) {
//    // 한 팀의 멤버 수에 도달하면 점수를 계산한다.
//    if depth == teamNumber {
//        var score1 = 0
//        var score2 = 0
//        for i in 0..<N {
//            for j in 0..<N {
//                if isTeam1[i] && isTeam1[j] { //👉 i와 j가 같이 1번 팀에 소속된 경우
//                    score1 += matrix[i][j]
//                } else if !isTeam1[i] && !isTeam1[j] { //👉 i와 j가 같이 1번 팀에 소속되지 않은 경우 (= 2번 팀에 소속된 경우)
//                    score2 += matrix[i][j]
//                }
//            }
//        }
//        ans = min(abs(score1 - score2), ans)
//        return
//    }
//
//    for i in index..<N {
//        if !isTeam1[i] {
//            isTeam1[i] = true
//            dfs(depth + 1, i)
//            isTeam1[i] = false
//        }
//    }
//}
//
//dfs(0, 0)
//print(ans)

//// 욫놀이
//
//extension Int {
//    var score: String {
//        switch self {
//        case 3: return "A"
//        case 2: return "B"
//        case 1: return "C"
//        case 0: return "D"
//        case 4: return "E"
//        default: return ""
//        }
//    }
//}
//
//for _ in 0..<3 {
//    print(readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +).score)
//}ㅋ
