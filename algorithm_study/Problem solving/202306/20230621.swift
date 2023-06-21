//
//  20230621.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/21.
//

/*
 3칸 짜리니까 뭘 해도 됨
 1. 순서를 틀림
    -> X이 갯수가 더 많음
    -> O가 X보다 1개 이상 더 많음
 2. 승리했는데도 게임 진행
    -> O이 승리한게 있는데 X가 한번 더 둠
    -> X가 승리한게 있는데 O가 한번 더 둠
 */

//func solution(_ board:[String]) -> Int {
//
//    let board = board.map { $0.map { String($0) } }
//
//    var oCount = 0
//    var xCount = 0
//
//    for i in 0..<3 {
//        for j in 0..<3 {
//            if board[i][j] == "O" {
//                oCount += 1
//            } else if board[i][j] == "X" {
//                xCount += 1
//            }
//        }
//    }
//
//    var oWin = false
//    var xWin = false
//
//    // check row
//    for i in 0..<3 {
//        if (board[i][0] == board[i][1]) && (board[i][1] == board[i][2]) {
//            if board[i][0] == "O" {
//                oWin = true
//            } else if board[i][0] == "X" {
//                xWin = true
//            }
//        }
//
//        if (board[0][i] == board[1][i]) && (board[1][i] == board[2][i]) {
//            if board[0][i] == "O" {
//                oWin = true
//            } else if board[0][i] == "X" {
//                xWin = true
//            }
//        }
//    }
//
//    // check diagonal
//
//    if (board[0][0] == board[1][1]) && (board[1][1] == board[2][2]) {
//        if board[0][0] == "O" {
//            oWin = true
//        } else if board[0][0] == "X" {
//            xWin = true
//        }
//    } else if (board[0][2] == board[1][1]) && (board[1][1] == board[2][0]) {
//        if board[0][2] == "O" {
//            oWin = true
//        } else if board[0][2] == "X" {
//            xWin = true
//        }
//    }
//
//
//    if oCount < xCount {
//        return 0
//    } else if oCount - xCount > 1 {
//        return 0
//    } else if oWin && (oCount == xCount) {
//        return 0
//    } else if oWin && xWin {
//        return 0
//    } else if xWin && (oCount > xCount) {
//        return 0
//    }
//
//    return 1
//}
//
