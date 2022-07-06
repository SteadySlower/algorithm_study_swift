//
//  20220706.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/06.
//

//// 연산자 유형 typealias
//typealias Operation = (Int, Int) -> Int
//
//// 연산자 4가지 정의 해두기
//func add(_ x: Int, _ y: Int) -> Int { x + y }
//func substract(_ x: Int, _ y: Int) -> Int { x - y }
//func multiply(_ x: Int, _ y: Int) -> Int { x * y }
//func devide(_ x: Int, _ y: Int) -> Int { x / y }
//
//// 연산자들의 배열
//let operations: [Operation] = [add, substract, multiply, devide]
//
//// 입력 받기
//let N = Int(readLine()!)!
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }
//var numOfOperations = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//// 연산 결과를 저장할 배열
//var results = [Int]()
//
//// dfs 구현
//func dfs(nowIndex: Int, result: Int) {
//    // 현재 index가 N과 같으면 (= 연산 끝)
//    if nowIndex == N {
//        results.append(result) //👉 결과 배열에 저장하고 리턴
//        return
//    }
//    
//    // 연산자 종류 (4개)를 순회하면서
//    for i in 0..<4 {
//        if numOfOperations[i] != 0 { //👉 아직 연산자가 남아있으면 연산해서 dfs 돌리기
//            numOfOperations[i] -= 1
//            dfs(nowIndex: nowIndex + 1, result: operations[i](result, array[nowIndex]))
//            numOfOperations[i] += 1
//        }
//    }
//}
//
//dfs(nowIndex: 1, result: array[0])
//
//print(results.max()!)
//print(results.min()!)

//// 입력 받기
//let N = Int(readLine()!)!
//let requests = readLine()!.split(separator: " ").map { Int(String($0))! }
//let limit = Int(readLine()!)!
//
//// 파라메트릭 서치 구현
//func parametricSearch() -> Int {
//    var start = 0
//    var end = requests.max()! //👉 상한선은 예산요청 중에 가장 높은 값
//    var mid = (start + end) / 2 //⭐️ 반복문 밖에서 return 해야 하므로 반복문 scope외에 mid 선언
//    
//    while start <= end {
//        let totalBudget = requests.reduce(0) { $0 + ($1 < mid ? $1 : mid) }
//            //👉 reduce문 활용 (mid 보다 작으면 예산 모두 주고 mid 보다 크면 mid 만큼만)
//        if totalBudget > limit { //👉 limit보다 크면 mid보다 아래에서 search
//            end = mid - 1
//        } else { //👉 limit보다 작으면 mid보다 위에서 search
//            start = mid + 1
//        }
//        mid = (start + end) / 2
//    }
//    
//    return mid
//}
//
//print(parametricSearch())
