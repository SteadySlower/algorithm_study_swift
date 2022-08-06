//
//  20220806.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/06.
//

//// 용돈 관리
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//var plans = [Int]()
//for _ in 0..<N {
//    plans.append(Int(readLine()!)!)
//}
//
//// k만큼 출력했을 때 생활이 가능한지 확인하는 함수
//func isPossible(_ k: Int) -> Bool {
//    // 총 출력 횟수
//    var cnt = 0
//    // 현재 현금 보유액
//    var money = 0
//
//    // 소비 계획을 순환하면서
//    for plan in plans {
//        // 현금이 모자라면 출금
//        if plan > money {
//            cnt += 1
//            money = k
//        }
//        // 당일 소비
//        money -= plan
//    }
//
//    // 출력 횟수가 M 이하면
//    return cnt <= M ? true : false
//}
//
//// 초기 최솟값은 하루소비액 중에 가장 큰 값
//    //👉 출금했는데 소비가 안되면 안되니까
//var start = plans.max()!
//// 초기 최댓값은 모든 소비액을 합친 값
//    //👉 한번 출금해서 모든 소비를 할 수 있으니까
//var end = plans.reduce(0, +)
//
//var ans = 0
//
//// 반복문을 통한 파라메트릭 서치 구현
//while start <= end {
//    let mid = (start + end) / 2
//
//    if isPossible(mid) {
//        end = mid - 1
//        ans = mid
//    } else {
//        start = mid + 1
//    }
//}
//
//print(ans)
