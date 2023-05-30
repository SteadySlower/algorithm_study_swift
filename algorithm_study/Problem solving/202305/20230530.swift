//
//  20230530.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/30.
//

//func solution(_ k:Int, _ ranges:[[Int]]) -> [Double] {
//
//    // 정적분을 통해 크기를 구하는 함수
//    func area(start: Int, end: Int) -> Double {
//        var result = 0.0
//        // 너비 1씩 끊어서 사다리꼴 너비 구하는 공식를 활용
//        for i in start...(end - 1) {
//            result += (heights[i] + heights[i + 1]) / 2
//        }
//
//        return result
//    }
//
//    // 콜라츠 연산을 한 숫자를 저장
//    var collatz = [k]
//    var k = k
//
//    // 1이 될때까지 콜라츠 연산
//    while k != 1 {
//        k = k % 2 == 0 ? k / 2 : k * 3 + 1
//        collatz.append(k)
//    }
//
//    // 넓이를 구해야 하므로 Double로 캐스팅
//    let heights = collatz.map { Double($0) }
//
//    // 각 구간의 넓이를 저장하는 배열
//    var result = [Double]()
//
//    for range in ranges {
//        // 시작 index와 끝 index
//        let start = range[0]
//        let end = collatz.count + range[1] - 1
//
//        // 각 index에 대해서 예외처리
//        if start > end { //👉 너비를 구할 수 없는 경우
//            result.append(-1)
//        } else if start == end { //👉 index가 같아서 너비가 0인 경우
//            result.append(0)
//        } else {
//            result.append(area(start: start, end: end))
//        }
//    }
//
//    return result
//}

//struct Queue {
//    var index = 0
//    var data = [Int]()
//
//    var isEmpty: Bool {
//        index == data.count
//    }
//
//    mutating func push(_ int: Int) {
//        data.append(int)
//    }
//
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//// 플로이드-와샬로 풀이 -> n이 너무 커서... 시간초과
//func solution(_ n:Int, _ roads:[[Int]], _ sources:[Int], _ destination:Int) -> [Int] {
//
//    let INF = Int.max
//    var map = Array(repeating: Array(repeating: INF, count: n + 1), count: n + 1)
//
//    for i in 1...n {
//        map[i][i] = 0
//    }
//
//    for road in roads {
//        map[road[0]][road[1]] = 1
//        map[road[1]][road[0]] = 1
//    }
//
//    for k in 1...n {
//        for i in 1...n {
//            for j in 1...n {
//                if map[i][k] == INF || map[k][j] == INF { continue }
//                map[i][j] = min(map[i][j], map[i][k] + map[k][j])
//            }
//        }
//    }
//
//    return sources.map { map[$0][destination] == INF ? -1 : map[$0][destination] }
//}
//
//print(solution(3, [[1, 2], [2, 3]], [2, 3], 1))
//print(solution(5, [[1, 2], [1, 4], [2, 4], [2, 5], [4, 5]], [1, 3, 5], 5))
