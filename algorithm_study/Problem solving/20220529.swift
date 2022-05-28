//
//  20220529.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/29.
//

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], S = input[1]
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//var visited = Array(repeating: false, count: 20)
//
//var count = 0
//var sum = 0
//
//func dfs(length: Int, now: Int) {
//    // 재귀함수 탈출 조건
//        //👉 합이 S일 때
//        //👉 그리고 수열의 길이가 0 이상일 때 (S가 0일 때 바로 리턴되는 것을 방지)
//    if sum == S && length > 0 {
//        count += 1
//    }
//    
//    // 겹치면 안되니까 now부터 반복문을 돌린다.
//    for i in now..<N {
//        if !visited[i] { //👉 아직 방문을 하지 않은 숫자라면
//            visited[i] = true //👉 방문 체크를 하고
//            sum += nums[i] //👉 합에 더한다.
//            dfs(length: length + 1, now: i)
//            visited[i] = false
//            sum -= nums[i]
//        }
//    }
//}
//
//dfs(length: 0, now: 0)
//print(count)
