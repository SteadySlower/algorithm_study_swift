//
//  20220923.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/23.
//

//func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
//
//    // 주어진 board를 String의 이차원 배열로
//    var board = board.map { Array($0).map { String($0) } }
//
//    // 점수를 체크하는 배열
//    var scoreBoard = Array(repeating: Array(repeating: false, count: n), count: m)
//
//    // 2x2 블록을 찾는 함수
//    func checkBlocks(_ r: Int, _ c: Int) {
//        let now = board[r][c]
//
//        // 현재 좌표에 블록이 없으면 return
//        if now == "0" { return }
//
//        // 2x2 블록이 board의 범위를 벗어나면 return
//        if r + 1 >= m || c + 1 >= n { return }
//
//        // 우측, 하단, 우하단이 모두 같은 블록인지 체크
//        for i in 0..<2 {
//            for j in 0..<2 {
//                // 다른 블록이 있으면 return
//                if board[r + i][c + j] != now { return }
//            }
//        }
//
//        // scoreBoard에 2x2블록을 체크
//        for i in 0..<2 {
//            for j in 0..<2 {
//                scoreBoard[r + i][c + j] = true
//            }
//        }
//    }
//
//    // scoreboard에 체크한 내용을 점수로 세기
//    func countScore() -> Int {
//        var result = 0
//        for r in 0..<m {
//            for c in 0..<n {
//                // 현재 좌표가 true이면?
//                if scoreBoard[r][c] {
//                    result += 1 //👉 1점 더하고
//                    scoreBoard[r][c] = false //👉 다음 판에 다시 쓰기 위해서 scoreBoard false로 바꾸고
//                    board[r][c] = "0" //👉 board에는 블록을 없앤다.
//                }
//            }
//        }
//        return result
//    }
//
//    // 블록을 떨어뜨리는 함수
//    func dropBlock(_ r: Int, _ c: Int) {
//        // board[r][c]가 "0"일 때 = 빈 곳일 때
//
//        // 위로 1칸씩 올라가면서 블록을 찾아서 현재 "0"으로 내려준다.
//        var up = 1
//        while true {
//            // 최상단을 넘어가면 return
//            if r - up < 0 { return }
//            // 위로 1칸씩 올라가면서 블록을 찾으면 블록과 빈곳의 자리를 바꾼다.
//            if board[r - up][c] != "0" {
//                let temp = board[r - up][c]
//                board[r - up][c] = "0"
//                board[r][c] = temp
//                return
//            }
//            up += 1
//        }
//    }
//
//    var score = 0
//
//    while true {
//        // 2 x 2 블록이 붙어 있는 것을 찾아서 스코어 보드에 표시
//        for r in 0..<m {
//            for c in 0..<n {
//                checkBlocks(r, c)
//            }
//        }
//
//        // 이번 판에 스코어 보드에서 점수를 세고 사라지는 블록에 "0" 표시
//        let now = countScore()
//
//        // 만약에 더 이상 점수를 얻지 못했다면 게임 끝
//        if now == 0 { break }
//
//        // 총점에 현재 얻은 점수 더하기
//        score += now
//
//        // 아래에서 부터 탐색하면서 블록 내리기
//        for r in (0..<m).reversed() {
//            for c in (0..<n).reversed() {
//                if board[r][c] == "0" {
//                    dropBlock(r, c)
//                }
//            }
//        }
//    }
//
//    return score
//}
//
//func prettyPrint(_ board: [[String]]) {
//    for i in 0..<board.count {
//        print(board[i])
//    }
//    print()
//}
//
//print(solution(6, 6, ["TTTANT", "RRFACC", "RRRFCC", "TRRRAA", "TTMMMF", "TMMTTJ"]))
