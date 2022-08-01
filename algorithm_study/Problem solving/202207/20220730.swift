//
//  20220730.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/30.
//

// 제로

//// 입력 받기
//let K = Int(readLine()!)!
//
//// 입력을 저장할 stack
//var stack = [Int]()
//
//// 0이면 pop, 0이 아니면 push
//for _ in 0..<K {
//    let input = Int(readLine()!)!
//    if input == 0 {
//        stack.removeLast()
//    } else {
//        stack.append(input)
//    }
//}
//
//// stack에 있는 모든 수의 합 더하기
//print(stack.reduce(0, +))

//// 시험 감독
//
//// 입력 받기
//let N = Int(readLine()!)!
//let rooms = readLine()!.split(separator: " ").map { Int(String($0))! }
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let B = input[0], C = input[1]
//
//// 필요한 감독관의 수를 구하기
//func getNumber(_ n: Int) -> Int {
//    var result = 0
//    var num = n
//
//    // 주 감독관이 담당하는 학생만큼 빼기
//    num -= B
//    result += 1
//
//    // 주 감독관이 모두 커버할 수 있는 경우
//    if num <= 0 {
//        return result
//    }
//
//    // 부감독관의 수 구하기
//    if num % C == 0 {
//        result += num / C //👉 나누어 떨어지는 경우
//    } else {
//        result += num / C + 1 //👉 나누어 떨어지지 않으면 1명 추가
//    }
//
//    return result
//}
//
//var cnt = 0
//
//for room in rooms {
//    cnt += getNumber(room)
//}
//
//print(cnt)

// 도키도키 간식드리미

//import Foundation
//
//let N = Int(readLine()!)!
//var line = Array(readLine()!.split(separator: " ").map { Int(String($0))! }.reversed())
//var stack = [Int]()
//var now = 1
//
//func popStack() {
//    while !stack.isEmpty {
//        if stack.last! == now {
//            now += 1
//            _ = stack.removeLast()
//        } else {
//            return
//        }
//    }
//}
//
//while !line.isEmpty {
//    let lineLast = line.popLast()!
//    if lineLast == now {
//        now += 1
//        popStack()
//        continue
//    } else {
//        guard let stackLast = stack.last else {
//            stack.append(lineLast)
//            continue
//        }
//        if stackLast > lineLast {
//            stack.append(lineLast)
//        } else {
//            print("Sad")
//            exit(0)
//        }
//    }
//}
//
//print("Nice")

//// 입력 받기
//let N = Int(readLine()!)!
//var line = Array(readLine()!.split(separator: " ").map { Int(String($0))! }.reversed())
//    //👉 줄을 뒤집는 이유는 Array를 앞에서 부터 pop하면 O(N)이기 때문에 (뒤에서부터는 O(1))
//
//// 스택 (왼쪽에 1열로 설 수 있는 곳)
//var stack = [Int]()
//
//// 현재 간식을 받을 번호표
//var now = 1
//
//// 줄이 다 없어질 때까지 반복문 실행
//while !line.isEmpty {
//    let person = line.popLast()!
//
//    // 현재 줄의 맨앞이 간식을 받을 순서라면
//    if person == now {
//        now += 1 //👉 간식을 주고 + 1
//
//        // 그리고 나서 stack 안에 대기중인 사람 중에 순서가 된 사람이 있으면 주기
//        while !stack.isEmpty && stack.last! == now {
//            _ = stack.popLast()!
//            now += 1
//        }
//
//    // 현재 줄의 맨앞 사람이 새치기한 사람이라면 대기열로 보내기
//    } else {
//        stack.append(person)
//    }
//}
//
//// stack이 비어있다면 순서가 꼬이지 않아서 다 간식을 받은 경우
//// stack이 비지 않은 경우 순서가 꼬여서 간식을 못 받은 경우
//print(stack.isEmpty ? "Nice" : "Sad")
