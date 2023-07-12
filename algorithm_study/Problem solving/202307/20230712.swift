//
//  20230712.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/12.
//

//func solution(_ n:Int, _ info:[Int]) -> [Int] {
//
//    var arrow = n
//    var result = Array(repeating: 0, count: 11)
//    var ryan = 0
//    var apeach = 0
//    var ans = [-1]
//    var scoreGap = 1
//
//    func dfs(index: Int) {
//        // 더 이상 화살이 없을 때
//        if arrow == 0 {
//            // 남은 과녁에서 어피치 점수 계산
//            for i in index..<11 {
//                if info[i] != 0 { apeach += 10 - i }
//            }
//
//            if ryan - apeach >= scoreGap {
//                ans = result
//                scoreGap = ryan - apeach
//            }
//
//            // 되돌리기
//            for i in index..<11 {
//                if info[i] != 0 { apeach -= 10 - i }
//            }
//
//            return
//
//        }
//
//        // 화살이 남았는데 마지막 과녁에 도달한 경우
//        if index == 11 {
//            // 마지막 과녁은 0점이니까 그냥 쏘면 됨
//            result[10] += arrow
//
//            if ryan - apeach >= scoreGap {
//                ans = result
//                scoreGap = ryan - apeach
//            }
//
//            // 되돌리기
//            result[10] -= arrow
//
//            return
//        }
//
//        // 현재 과녁에서 이기는 경우
//        let winningShot = info[index] + 1 //👉 이 과녁에 쏴야하는 최소한의 화살
//
//        // 현재 남은 화살이 더 많아야 함
//        if arrow >= winningShot {
//            for shoot in winningShot...arrow {
//                arrow -= shoot
//                ryan += 10 - index
//                result[index] = shoot
//                dfs(index: index + 1)
//                arrow += shoot
//                ryan -= 10 - index
//                result[index] = 0
//            }
//        }
//
//        // 현재 과녁에서 지는 경우
//        let loosingShot = min(info[index], arrow)
//
//        for shoot in 0...loosingShot {
//            arrow -= shoot
//            result[index] += shoot
//            apeach += 10 - index
//            dfs(index: index + 1)
//            arrow += shoot
//            result[index] -= shoot
//            apeach -= 10 - index
//        }
//
//
//    }
//
//    dfs(index: 0)
//
//    return ans
//}

//func solution(_ n:Int, _ info:[Int]) -> [Int] {
//
//    var arrow = n
//    var result = Array(repeating: 0, count: 11)
//    var ryan = 0
//    var apeach = 0
//    var ans = [[Int]]()
//    var scoreGap = 1
//
//    func dfs(index: Int) {
//        // 더 이상 화살이 없을 때
//        if arrow == 0 {
//            // 남은 과녁에서 어피치 점수 계산
//            for i in index..<11 {
//                if info[i] != 0 { apeach += 10 - i }
//            }
//
//            if ryan - apeach >= scoreGap {
//                ans.append(result)
//                scoreGap = ryan - apeach
//            }
//
//            // 되돌리기
//            for i in index..<11 {
//                if info[i] != 0 { apeach -= 10 - i }
//            }
//
//            return
//
//        }
//
//        // 화살이 남았는데 마지막 과녁에 도달한 경우
//        if index == 11 {
//            // 마지막 과녁은 0점이니까 그냥 쏘면 됨
//            result[10] += arrow
//
//            if ryan - apeach >= scoreGap {
//                ans.append(result)
//                scoreGap = ryan - apeach
//            }
//
//            // 되돌리기
//            result[10] -= arrow
//
//            return
//        }
//
//        // 현재 과녁에서 이기는 경우
//        let winningShot = info[index] + 1 //👉 이 과녁에 쏴야하는 최소한의 화살
//
//        // 현재 남은 화살이 더 많아야 함
//        if arrow >= winningShot {
//            for shoot in winningShot...arrow {
//                arrow -= shoot
//                ryan += 10 - index
//                result[index] = shoot
//                dfs(index: index + 1)
//                arrow += shoot
//                ryan -= 10 - index
//                result[index] = 0
//            }
//        }
//
//        // 현재 과녁에서 지는 경우
//        let loosingShot = min(info[index], arrow)
//
//        for shoot in 0...loosingShot {
//            arrow -= shoot
//            result[index] += shoot
//            apeach += 10 - index
//            dfs(index: index + 1)
//            arrow += shoot
//            result[index] -= shoot
//            apeach -= 10 - index
//        }
//
//
//    }
//
//    dfs(index: 0)
//
//    ans.sort { a, b in
//        for i in (0..<11).reversed() {
//            if a[i] == b[i] {
//                continue
//            } else {
//                return a[i] > b[i]
//            }
//        }
//        return false
//    }
//
//    return ans.isEmpty ? [-1] : ans[0]
//}




//func solution(_ n:Int, _ info:[Int]) -> [Int] {
//
//    func getScoreGap(ryan: [Int]) -> Int? {
//        var ryanScore = 0
//        var apeachScore = 0
//
//        for i in 0..<11 {
//            if ryan[i] == 0 && info[i] == 0 {
//                continue
//            }
//
//            if ryan[i] > info[i] {
//                ryanScore += 10 - i
//            } else {
//                apeachScore += 10 - i
//            }
//        }
//
//        return ryanScore > apeachScore ? ryanScore - apeachScore : nil
//    }
//
//    var arrow = n
//    var result = Array(repeating: 0, count: 11)
//    var ans = [[Int]]()
//    var scoreGap = 1
//
//    func dfs(_ index: Int) {
//        if arrow == 0 || index == 11 {
//            result[10] += arrow
//            if let newScoreGap = getScoreGap(ryan: result) {
//                if newScoreGap == scoreGap {
//                    ans.append(result)
//                } else if newScoreGap > scoreGap {
//                    ans = [result]
//                    scoreGap = newScoreGap
//                }
//            }
//            result[10] -= arrow
//            return
//        }
//
//        for i in 0...arrow {
//            result[index] = i
//            arrow -= i
//            dfs(index + 1)
//            arrow += i
//            result[index] = 0
//        }
//    }
//
//    dfs(0)
//
//    ans.sort { a, b in
//        for i in (0..<11).reversed() {
//            if a[i] == b[i] {
//                continue
//            } else {
//                return a[i] > b[i]
//            }
//        }
//        return false
//    }
//
//    return ans.isEmpty ? [-1] : ans[0]
//}

//print(solution(5, [2,1,1,1,0,0,0,0,0,0,0]))
