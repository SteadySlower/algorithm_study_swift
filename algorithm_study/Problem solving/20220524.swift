//
//  20220524.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/24.
//

// 체스판 다시 칠하기

//typealias Board = Array<Array<Character>>
//
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = nums[0], M = nums[1]
//var input = [Array<Character>]()
//
//for _ in 0..<N {
//    let line = readLine()!.map { $0 }
//    input.append(line)
//}
//
////💡 체스판은 BWBW로 반복되거나 WBWB로 반복되는 구조임
//    // 따라서 BWBW로 반복되는 경우 다시 칠해야하는 칸과
//    // WBWB로 반복되는 경우 다시 칠해야하는 칸을 비교해서
//    // 더 작은 칸을 출력한다.
//func countRepaint(board: Board) -> Int {
//    var result1 = 0
//    var result2 = 0
//    for i in 0..<8 {
//        for j in 0..<8 {
//            if (i + j) % 2 == 0 {
//                if board[i][j] == "B" {
//                    result1 += 1
//                } else {
//                    result2 += 1
//                }
//            } else {
//                if board[i][j] == "W" {
//                    result1 += 1
//                } else {
//                    result2 += 1
//                }
//            }
//        }
//    }
//    return min(result1, result2)
//}
//
//// 체스판 크기 (8 * 8)만큼 잘라오는 함수
//func getBoard(x: Int, y: Int) -> Board {
//    var board = [Array<Character>]()
//    for i in 0..<8 {
//        board.append(Array(input[x + i][y..<y+8]))
//        //⭐️ subscript로 Array의 일부를 가져온 경우
//        //👉 SubArray 타입이 되므로 Array로 다시 타입캐스팅해서 사용하자!
//    }
//    return board
//}
//
//// 최대로 다시 칠해야하는 경우로 시작
//var result = 64
//
//// 모든 체스판이 나올 수 있는 경우의 수를 순회하면서 최소한으로 다시 칠하는 경우를 구한다.
//for x in 0..<(N-7) {
//    for y in 0..<(M-7) {
//        let board = getBoard(x: x, y: y)
//        result = min(result, countRepaint(board: board))
//    }
//}
//
//print(result)

// 영화감독 숌

/*
 666
 1666
 2666
 3666
 4666
 5666 👉 여기까지는 규칙이 있는 듯?
 6660 👉 바로 예외가 등장
 6661
 6662
 ...
 💡 몇줄만 적어봐도 규칙은 없다는 것을 알 수 있다.
 💡 그리고 N이 10,000 밖에 안된다 = 전부 다 계산해도 시간 초과 없음
 */

//import Foundation
////👉 String.contains(Character)는 Foundation 없이도 사용이 가능하지만
////⭐️ String.contains(StringProtocol)은 Foundation이 있어야 사용이 가능하다!
//
//// "666"이 들어가는지 알아보는 함수
//    //💡 자릿수에 대한 것은 10의 배수로 나누기!
//func checkIf(n: Int) -> Bool {
//    var n = n
//    while n >= 666 {
//        if n % 1000 == 666 {
//            //👉 1000으로 나눈 나머지 (= 마지막 3자리)가 666인지 확인
//            return true
//        }
//        n /= 10 //👉 자리수 한 칸 앞으로 당겨서 다시 확인
//    }
//    return false
//}
//
//let N = Int(readLine()!)!
//
//var now = 666 //👉 첫 번째 경우의 수를 알고 있으므로 여기서 부터 반복문
//var count = 1
//
//while count != N {
//    now += 1
//    if checkIf(n: now) {
//        count += 1
//    }
//}
//
//print(now)
