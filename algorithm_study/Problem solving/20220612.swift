//
//  20220612.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/12.
//

//// 외계인의 기타 연주
//
///*
// stack 안이 정렬되어야 한다고 생각하면?
// = stack.last 보다 큰 것만 push 하면된다.
// = 그 이전 것보다 더 작은게 나오면 뭔가 동작을 해야할 때 사용하면 좋음. (ex. 오큰수)
// */
//
//// 첫줄 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], P = input[1]
//
//// stack의 배열 만들기 (1 ~ 6이니까 index 맞추기 편하게 7개)
//var stacks = Array(repeating: [Int](), count: 7)
//// 동작의 횟수 저장할 변수
//var result = 0
//
//// N개의 줄 입력 받기
//for _ in 0..<N {
//    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let n = line[0], p = line[1]
//
//    while true {
//        // stack의 마지막과 지금 누를 프렛 비교
//        guard let last = stacks[n].last else {
//            //✅ stack이 비었을 때 push하고 result + 1 (= 아무것도 안 눌렀을 때 프렛누름)
//            stacks[n].append(p)
//            result += 1
//            break
//        }
//
//        //✅ 더 큰 프렛을 지금 누르고 있다면 pop하고 result + 1 (= 더 높은음 누르고 있으면 손 떼어야 함)
//        if last > p {
//            stacks[n].removeLast()
//            result += 1
//        //✅ 같은 프렛을 이미 누르고 있다면 break (= 동작 필요 없음)
//        } else if last == p {
//            break
//        //✅ 더 작은 프렛을 누르고 있다면 현재 프렛 push하고 result + 1
//        } else {
//            stacks[n].append(p)
//            result += 1
//            break
//        }
//    }
//}
//
//print(result)
