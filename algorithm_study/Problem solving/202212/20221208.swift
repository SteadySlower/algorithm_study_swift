//
//  20221208.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/09.
//

//// 진행 방향
//enum Direction {
//    case down, right, up
//}
//
//func solution(_ n:Int) -> [Int] {
//    // 이차원 배열
//    var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
//
//    // 첫 방향은 down 이므로 -1, 0에서 시작
//    var i = -1
//    var j = 0
//    var num = 1
//    var direction = Direction.down
//
//    // num의 최대 크기는 1 + 2 + ... + n
//    while num <= n * (n + 1) / 2 {
//        switch direction {
//        // 진행 방향이 아래인 경우
//        case .down:
//            // 아래로 한칸 내려갔을 때 삼각형 밖으로 벗어나지 않고, 이미 다른 숫자가 있지는 않는지 확인
//            if i + 1 < n && matrix[i + 1][j] == 0 {
//                i += 1 //👉 아래로 1칸
//                matrix[i][j] = num //👉 숫자 쓰고
//                num += 1 //👉 숫자 + 1
//            // 위 조건을 만족 못하면 방향 전환
//            } else {
//                direction = .right
//            }
//        // 진행 방향이 오른쪽인 경우
//        case .right:
//            // 오른쪽으로 한칸 갔을 때 삼각형 밖으로 벗어나지 않고, 이미 다른 숫자가 있지는 않는지 확인
//            if j + 1 < n && matrix[i][j + 1] == 0 {
//                j += 1 //👉 오른쪽으로 한칸
//                matrix[i][j] = num //👉 숫자 쓰고
//                num += 1 //👉 숫자 + 1
//            // 위 조건을 만족 못하면 방향 전환
//            } else {
//                direction = .up
//            }
//        // 진행 방향이 위쪽인 경우
//        case .up:
//            // 위로 한칸 (삼각형이므로 왼쪽으로도 한칸) 갔을 때 삼각형 밖으로 벗어나지 않고, 이미 다른 숫자가 있지는 않는지 확인
//            if i - 1 >= 0 && j - 1 >= 0 && matrix[i - 1][j - 1] == 0 {
//                i -= 1 //👉 위로 한칸
//                j -= 1 //👉 왼쪽으로 한칸
//                matrix[i][j] = num //👉 숫자 쓰고
//                num += 1 //👉 숫자 + 1
//            // 위 조건을 만족하지 못하면 방향 전환
//            } else {
//                direction = .down
//            }
//        }
//    }
//
//    // 정답 배열
//    var ans = [Int]()
//
//    // 0은 제거하고 정답 배열에 이차원 배열의 1줄씩 추가
//    for line in matrix {
//        ans += line.filter { $0 != 0 }
//    }
//
//    return ans
//}
//
//print(solution(4))
