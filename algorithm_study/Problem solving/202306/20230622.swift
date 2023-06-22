//
//  20230622.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/22.
//

//func solution(_ board:[String]) -> Int {
//
//    // subscript로 접근하게 편하도록 이차원 배열[[String]]으로 바꾸어 준다
//    let board = board.map { $0.map { String($0) } }
//
//    // O와 X 갯수 세기
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
//    // 이긴 사람 정하기
//    var oWin = false
//    var xWin = false
//
//    // 가로, 세로 확인
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
//    // 대각선 확인
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
//    // O와 X의 갯수가 같거나 O가 1개 많다.
//    if !(0...1).contains(oCount - xCount) {
//        return 0
//    // O와 X가 동시에 이기면 안된다.
//    } else if oWin && xWin {
//        return 0
//    // O가 이긴 경우, O가 X보다 1개 많아야 한다.
//    } else if oWin && (oCount != xCount + 1) {
//        return 0
//    // X가 이긴 경우, O와 X의 갯수가 같아야 한다.
//    } else if xWin && (oCount != xCount) {
//        return 0
//    }
//
//    return 1
//}
