//
//  20221013.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/13.
//

//// 행성과 간선을 튜플로 표현
//typealias Planet = (Int, Int, Int, Int)
//typealias Edge = (Int, Int, Int)
//
//// 두 행성 간의 간선을 구하는 함수
//func getEdges(_ p1: Planet, _ p2: Planet) -> Edge {
//    let xCost = abs(p1.1 - p2.1)
//    let yCost = abs(p1.2 - p2.2)
//    let zCost = abs(p1.3 - p2.3)
//    let cost = min(xCost, yCost, zCost)
//    return (p1.0, p2.0, cost)
//}
//
//// 행성 입력 받기
//let N = Int(readLine()!)!
//var planets = [Planet]()
//
//for i in 0..<N {
//    let xyz = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let x = xyz[0], y = xyz[1], z = xyz[2]
//    planets.append((i, x, y, z))
//}
//
//// 간선 구하기
//var edges = [Edge]()
//
//// x 좌표 기준으로 인접한 두 행성의 간선 구하기
//planets.sort(by: { $0.1 < $1.1 })
//for i in 0..<(N - 1) {
//    edges.append(getEdges(planets[i], planets[i + 1]))
//}
//
//// y 좌표 기준으로 인접한 두 행성의 간선 구하기
//planets.sort(by: { $0.2 < $1.2 })
//for i in 0..<(N - 1) {
//    edges.append(getEdges(planets[i], planets[i + 1]))
//}
//
//// z 좌표 기준으로 인접한 두 행성의 간선 구하기
//planets.sort(by: { $0.3 < $1.3 })
//for i in 0..<(N - 1) {
//    edges.append(getEdges(planets[i], planets[i + 1]))
//}
//
//// 3(N - 1)개의 간선들을 비용 순으로 정렬한다.
//edges.sort(by: { $0.2 < $1.2 })
//
//
//// 서로소 집합 알고리즘 구현
//var parent = Array(0..<N)
//
//func find(_ a: Int) -> Int {
//    if parent[a] != a {
//        parent[a] = find(parent[a])
//    }
//    return parent[a]
//}
//
//func union(_ a: Int, _ b: Int) {
//    let a = find(a)
//    let b = find(b)
//
//    if a < b {
//        parent[b] = a
//    } else {
//        parent[a] = b
//    }
//}
//
//// 크루스칼 알고리즘으로 최소 비용 구하기
//var cost = 0
//
//for edge in edges {
//    let p1 = edge.0, p2 = edge.1, c = edge.2
//
//    if find(p1) != find(p2) {
//        union(p1, p2)
//        cost += c
//    }
//}
//
//print(cost)


//// N과 M 입력 받기
//let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = NM[0], M = NM[1]
//
//// 간선 입력 받기
//var edges = [(Int, Int, Int)]()
//
//for _ in 0..<M {
//    let xyz = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let x = xyz[0], y = xyz[1], z = xyz[2]
//    edges.append((x, y, z))
//}
//
//// 최소 비용의 간선 부터 연결해야 하기 때문에 비용이 적은 순으로 정렬
//edges.sort(by: { $0.2 < $1.2 })
//
//// 아낀 비용을 찾아야 하므로 모든 간선을 연결했을 때의 비용의 계산
//let total = edges.reduce(0) { $0 + $1.2 }
//
//// 서로소 집합 알고리즘 구현
//var parent = Array(0..<N)
//
//func find(_ a: Int) -> Int {
//    if parent[a] != a {
//        parent[a] = find(parent[a])
//    }
//    return parent[a]
//}
//
//func union(_ a: Int, _ b: Int) {
//    let a = find(a)
//    let b = find(b)
//
//    if a < b {
//        parent[b] = a
//    } else {
//        parent[a] = b
//    }
//}
//
//// 간선을 연결하는데 필요한 총 비용
//var cost = 0
//
//// 크루스칼 알고리즘 구현
//    // 비용이 낮은 간선부터 연결하는데 이미 연결되어 있다면 (= 부모가 같다면) 연결하지 않음.
//for edge in edges {
//    let a = edge.0, b = edge.1, c = edge.2
//    if find(a) != find(b) {
//        union(a, b)
//        cost += c
//    }
//}
//
//print(total - cost)
