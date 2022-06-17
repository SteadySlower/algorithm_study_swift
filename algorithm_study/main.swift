//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 문제가 너무 막막할 때는 작은 조각으로 나누어서 구현하자!
 다 구해놓고 세려고 하지말고 세면서 구하자!
 */


// 탈출

// 물의 위치를 기록할 튜플 자료형
typealias Position = (r: Int, c: Int)

// 큐 구현
struct Queue {
    var queue = [Position]()
    var index = 0
    
    var isEmpty: Bool {
        return queue.count - index == 0 ? true : false
    }
    
    mutating func push(_ p: Position) {
        queue.append(p)
    }
    
    mutating func pop() -> Position {
        defer {
            index += 1
        }
        return queue[index]
    }
}

// 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let R = input[0], C = input[1]
var matrix = [[Character]]()
for _ in 0..<R {
    matrix.append(readLine()!.map{ $0 })
}

// 고슴도치가 방문한 곳 check
var check = Array(repeating: Array(repeating: false, count: C), count: R)

// 동서남북 이동 방향
let dr = [1, -1, 0, 0]
let dc = [0, 0, 1, -1]

// 유효한 좌표인지 확인
func isValid(_ r: Int, _ c: Int) -> Bool {
    return r >= 0 && r < R && c >= 0 && c < C ? true : false
}

// 큐 2개 선언
var queue = Queue()
var waterQueue = Queue()

// bfs (시작점을 인자로 받음)
func bfs() {
    var time = 0 //👉 현재 이동까지 걸린 시간
    
    while !queue.isEmpty {
        time += 1 //👉 시간 + 1
        
        //⭐️ 임시 저장용 queue
        var temp = Queue()
        
        // 일단 물부터 이동 (물이 들어올 자리는 이동 불가이므로)
        while !waterQueue.isEmpty {
            let water = waterQueue.pop()
            for i in 0..<4 {
                let nr = water.r + dr[i]
                let nc = water.c + dc[i]
                // 물이 이동할 수 있는 자리라면
                if isValid(nr, nc) && matrix[nr][nc] == "." {
                    matrix[nr][nc] = "*" //👉 지도에 물로 표시
                    temp.push((r: nr, c: nc)) //👉 임시 queue에 저장
                }
            }
        }
        // 임시 queue를 물 queue에 할당하고 임시 queue 비우기
        waterQueue = temp
        temp = Queue()
        
        // 고슴도치 이동
        while !queue.isEmpty {
            let p = queue.pop()
            for i in 0..<4 {
                let nr = p.r + dr[i]
                let nc = p.c + dc[i]
                if isValid(nr, nc) && !check[nr][nc] {
                    if matrix[nr][nc] == "D" { //👉 목적지에 도착하면 시간 출력
                        print(time)
                        return
                    } else if matrix[nr][nc] == "." { //👉 이동 가능한 장소라면
                        temp.push((r: nr, c: nc)) // 임시 큐에 push 하고
                        check[nr][nc] = true // 방문 체크
                    }
                }
            }
        }
        // 임시 queue를 고슴도치 queue에 할당
        queue = temp
    }
    print("KAKTUS")
}

// 지도를 돌면서 고슴도치의 시작점과 물의 위치 각각의 queue에 넣기
for r in 0..<R {
    for c in 0..<C {
        if matrix[r][c] == "S" {
            queue.push((r: r, c: c))
        } else if matrix[r][c] == "*" {
            waterQueue.push((r: r, c: c))
        }
    }
}

// bfs 실시
bfs()
