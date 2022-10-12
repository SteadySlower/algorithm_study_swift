//
//  20221012.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/12.
//

//// 입력 받기
//let G = Int(readLine()!)!
//let P = Int(readLine()!)!
//
//// 자기 자신 부모로 초기화
//var parent = Array(0...G)
//
//// find 함수 구현
//func find(_ a: Int) -> Int {
//    if parent[a] != a {
//        parent[a] = find(parent[a])
//    }
//    return parent[a]
//}
//
//// union 함수 구현
//func union(_ a: Int, _ b: Int) {
//    let parentA = find(a)
//    let parentB = find(b)
//
//    if parentA < parentB {
//        parent[parentB] = parentA
//    } else {
//        parent[parentA] = parentB
//    }
//}
//
//
//var ans = 0
//
//for _ in 0..<P {
//    let parent = find(Int(readLine()!)!)
//    // 부모가 0이면 = 지금 도킹할 자리가 없으면 break
//    if parent == 0 { break }
//    // 도킹한 자리와 그 아래 자리와 연결 (parent에 도킹하려는 사람은 parent - 1에 도킹해야 함)
//    union(parent, parent - 1)
//    ans += 1
//}
//
//print(ans)

//let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
//let n = nm[0], m = nm[1]
//
//var matrix = [Array(repeating: 0, count: n + 1)]
//
//for _ in 0..<n {
//    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
//    matrix.append([0] + line)
//}
//
//var parent = Array(0...n)
//
//// 재귀적으로 부모 node 찾기
//func find(_ a: Int) -> Int {
//    if parent[a] != a {
//        parent[a] = find(a)
//    }
//    return parent[a]
//}
//
//// 두 원소가 속한 집합을 합치기
//func union(_ a: Int, _ b: Int) {
//    let parentA = find(a)
//    let parentB = find(b)
//
//    if parentA < parentB {
//        parent[parentB] = parentA
//    } else {
//        parent[parentA] = parentB
//    }
//}
//
//// 두 지점 사이에 연결된 길이 있다면 같은 집합에 들어있는 것
// // = 거쳐서 갈 수 있다.
//for i in 1...n {
//    for j in 1...n {
//        if matrix[i][j] == 1 {
//            union(i, j)
//        }
//    }
//}
//
//// 계획 입력 받기
//let plan = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//// 모두 같은 집합에 있는지 확인
//var isPossible = true
//let planParent = find(plan[0])
//
//for p in plan {
//    if find(p) != planParent {
//        isPossible = false
//    }
//}
//
//if isPossible {
//    print("YES")
//} else {
//    print("NO")
//}
