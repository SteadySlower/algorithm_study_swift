//
//  20220908.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/08.
//

//func solution(_ game_board:[[Int]], _ table:[[Int]]) -> Int {
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    var table = table
//
//    // 퍼즐이 놓인 테이블을 회전하는 함수
//    func rotateTable() {
//        let length = table.count
//        var newTable = Array(repeating: Array(repeating: 0, count: length), count: length)
//
//        for r in 0..<length {
//            for c in 0..<length {
//                newTable[r][c] = table[c][length - r - 1]
//            }
//        }
//
//        table = newTable
//    }
//
//    // 유효한 좌표인지 리턴하는 함수
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        0..<table.count ~= r && 0..<table.count ~= c
//    }
//
//    // 최초의 퍼즐조각 (테이블을 회전하기 전)을 찾는 함수
//        // 퍼즐조각을 찾을 때마다 해당 퍼즐조각이 놓인 칸에 번호를 매긴다.
//    func findFirstPuzzles() {
//        var cnt = 1
//        var visited1 = Array(repeating: Array(repeating: false, count: table.count), count: table.count)
//
//
//        func dfs(_ r: Int, _ c: Int) {
//            let origin = (r, c)
//            // dfs를 위한 stack에 넣기 및 방문체크
//            var stack = [(Int, Int)]()
//            stack.append(origin)
//            visited1[r][c] = true
//
//            // 테이블에 블록 번호 쓰기
//            table[r][c] = cnt
//
//            // 블록 배열 만들기 (원점을 (0, 0) 기준으로)
//            var block = [(Int, Int)]()
//            block.append((0, 0))
//
//            while !stack.isEmpty {
//                let now = stack.popLast()!
//                table[now.0][now.1] = cnt
//                for i in 0..<4 {
//                    let nr = now.0 + dr[i], nc = now.1 + dc[i]
//                    if isValid(nr, nc) && table[nr][nc] != 0 && !visited1[nr][nc] {
//                        stack.append((nr, nc))
//                        visited1[nr][nc] = true
//                        // 블록 번호 쓰기
//                        table[nr][nc] = 1
//                        // 블록에 원점 기준으로 다른 조각의 위치 넣기
//                        block.append((nr - origin.0, nc - origin.1))
//                    }
//                }
//            }
//
//            // dfs가 끝나면 블록들에 넣고
//            puzzles.append([block])
//            // 블럭 번호 추가
//            cnt += 1
//        }
//
//        for r in 0..<table.count {
//            for c in 0..<table.count {
//                if table[r][c] != 0 && !visited1[r][c] {
//                    dfs(r, c)
//                }
//            }
//        }
//    }
//
//    // 회전한 테이블에서 퍼즐을 찾는 함수
//        // dfs를 통해서 퍼즐을 찾는데 퍼즐의 번호가 table에 저장되어 있으므로
//        // 해당 번호를 통해서 puzzles[번호]에 해당 퍼즐을 저장한다.
//    func findRotatedPuzzles() {
//        var visited2 = Array(repeating: Array(repeating: false, count: table.count), count: table.count)
//
//        func dfs(_ r: Int, _ c: Int) {
//            let blockNumber = table[r][c]
//            let origin = (r, c)
//
//            var stack = [(Int, Int)]()
//            stack.append(origin)
//            visited2[r][c] = true
//
//            var block = [(Int, Int)]()
//            block.append((0, 0))
//
//            while !stack.isEmpty {
//                let now = stack.popLast()!
//                for i in 0..<4 {
//                    let nr = now.0 + dr[i], nc = now.1 + dc[i]
//                    if isValid(nr, nc) && table[nr][nc] != 0 && !visited2[nr][nc] {
//                        stack.append((nr, nc))
//                        visited2[nr][nc] = true
//                        block.append((nr - origin.0, nc - origin.1))
//                    }
//                }
//            }
//            puzzles[blockNumber].append(block)
//        }
//
//        for r in 0..<table.count {
//            for c in 0..<table.count {
//                if table[r][c] != 0 && !visited2[r][c] {
//                    dfs(r, c)
//                }
//            }
//        }
//    }
//
//    // 모든 퍼즐을 찾는 함수
//        // 최초에 1회 + 90도, 180도, 270도 회전 총 3회
//    func findAllPuzzles() {
//        findFirstPuzzles()
//
//        for _ in 0..<3 {
//            rotateTable()
//            findRotatedPuzzles()
//        }
//    }
//
//    // 퍼즐을 넣을 구멍의 모양을 리턴하는 함수
//        // 퍼즐과 동일하게 (0, 0)을 기준으로 모양만 저장
//    func findSpace(_ r: Int, _ c: Int) -> [(Int, Int)] {
//        let origin = (r, c)
//        var hole = [(0, 0)]
//        var stack = [origin]
//        visited[r][c] = true
//
//        while !stack.isEmpty {
//            let now = stack.popLast()!
//            for i in 0..<4 {
//                let nr = now.0 + dr[i]
//                let nc = now.1 + dc[i]
//                if isValid(nr, nc) && game_board[nr][nc] == 0 && !visited[nr][nc] {
//                    hole.append((nr - origin.0, nc - origin.1))
//                    stack.append((nr, nc))
//                    visited[nr][nc] = true
//                }
//            }
//        }
//
//        return hole
//    }
//
//    // 일치하는 퍼즐 조각을 찾는 함수
//    func findMatchingPuzzle(_ space: [(Int, Int)]) -> Int {
//
//        // 두 [(Int, Int)] 자료형이 동일한지 판정하는 함수
//            // (Int, Int)가 Equatable이 아니기 때문에 구현
//        func isMatching(_ space: [(Int, Int)], _ block: [(Int, Int)]) -> Bool {
//            guard space.count == block.count else { return false }
//            for i in 0..<space.count {
//                if space[i].0 != block[i].0 || space[i].1 != block[i].1 {
//                    return false
//                }
//            }
//            return true
//        }
//
//        // 모든 퍼즐을 탐색하면서 일치하는 퍼즐을 찾는다.
//        for i in 1..<puzzles.count {
//            // 해당 퍼즐이 이미 쓰인 퍼즐이라면 continue
//            guard usedPuzzle[i] == false else { continue }
//            for j in 0..<4 {
//                if isMatching(space, puzzles[i][j]) { return i }
//                // 똑같은 퍼즐이 있다면 해당 퍼즐의 번호를 리턴
//            }
//        }
//
//        // 똑같은 모양의 퍼즐이 없다면 0을 리턴
//        return 0
//    }
//
//    var puzzles: [[[(Int, Int)]]] = [[]]
//
//    findAllPuzzles()
//
//    var visited = Array(repeating: Array(repeating: false, count: game_board.count), count: game_board.count)
//    var usedPuzzle = Array(repeating: false, count: puzzles.count)
//    var answer = 0
//
//    for r in 0..<game_board.count {
//        for c in 0..<game_board.count {
//            // game_board에 방문하지 않은 빈 공간이 발견되면
//            if game_board[r][c] == 0 && !visited[r][c] {
//                // dfs해서 빈공간을 찾고
//                let space = findSpace(r, c)
//                // 칸은 모양의 퍼즐을 찾는다.
//                let matchingPuzzle = findMatchingPuzzle(space)
//                // 똑같은 모양의 퍼즐이 없다면 (리턴값 0) 다른 공간을 찾는다.
//                if matchingPuzzle == 0 {
//                    continue
//                // 똑같은 모양의 퍼즐이 있다면 해당 퍼즐을 사용체크하고 space의 크기를 답에 더한다.
//                } else {
//                    usedPuzzle[matchingPuzzle] = true
//                    answer += space.count
//                }
//            }
//        }
//    }
//
//    return answer
//}


//func solution(_ game_board:[[Int]], _ table:[[Int]]) -> Int {
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    var table = table
//
////    func rotateTable() {
////        let length = table.count
////        var newTable = Array(repeating: Array(repeating: 0, count: length), count: length)
////
////        for r in 0..<length {
////            for c in 0..<length {
////                newTable[r][c] = table[c][length - r - 1]
////            }
////        }
////
////        table = newTable
////    }
//
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        r >= 0 && r < table.count && c >= 0 && c < table.count
//    }
//
//    func findFirstBlocks() {
//        var cnt = 1
//        var visited1 = Array(repeating: Array(repeating: false, count: table.count), count: table.count)
//
//
//        func dfs(_ r: Int, _ c: Int) {
//            let origin = (r, c)
//            // dfs를 위한 stack에 넣기 및 방문체크
//            var stack = [(Int, Int)]()
//            stack.append(origin)
//            visited1[r][c] = true
//
//            // 테이블에 블록 번호 쓰기
//            table[r][c] = cnt
//
//            // 블록 배열 만들기 (원점을 (0, 0) 기준으로)
//            var block = [(Int, Int)]()
//            block.append((0, 0))
//
//            while !stack.isEmpty {
//                let now = stack.popLast()!
//                table[now.0][now.1] = cnt
//                for i in 0..<4 {
//                    let nr = now.0 + dr[i], nc = now.1 + dc[i]
//                    if isValid(nr, nc) && table[nr][nc] != 0 && !visited1[nr][nc] {
//                        stack.append((nr, nc))
//                        visited1[nr][nc] = true
//                        // 블록 번호 쓰기
//                        table[nr][nc] = 1
//                        // 블록에 원점 기준으로 다른 조각의 위치 넣기
//                        block.append((nr - origin.0, nc - origin.1))
//                    }
//                }
//            }
//
//            // dfs가 끝나면 블록들에 넣고
//            blocks.append([block])
//            // 블럭 번호 추가
//            cnt += 1
//        }
//
//        for r in 0..<table.count {
//            for c in 0..<table.count {
//                if table[r][c] != 0 && !visited1[r][c] {
//                    dfs(r, c)
//                }
//            }
//        }
//    }
//
//    func rotateBlocks() {
//        for i in 1..<blocks.count {
//            var now = blocks[i][0]
//            for _ in 0..<3 {
//                var new = [(Int, Int)]()
//                for j in 0..<now.count {
//                    new.append((now[j].1, -now[j].0 - 1))
//                }
//                now = new
//                blocks[i].append(new)
//            }
//        }
//    }
//
////    func findRotatedBlocks() {
////        var visited2 = Array(repeating: Array(repeating: false, count: table.count), count: table.count)
////
////        func dfs(_ r: Int, _ c: Int) {
////            let blockNumber = table[r][c]
////            let origin = (r, c)
////
////            var stack = [(Int, Int)]()
////            stack.append(origin)
////            visited2[r][c] = true
////
////            var block = [(Int, Int)]()
////            block.append((0, 0))
////
////            while !stack.isEmpty {
////                let now = stack.popLast()!
////                for i in 0..<4 {
////                    let nr = now.0 + dr[i], nc = now.1 + dc[i]
////                    if isValid(nr, nc) && table[nr][nc] != 0 && !visited2[nr][nc] {
////                        stack.append((nr, nc))
////                        visited2[nr][nc] = true
////                        block.append((nr - origin.0, nc - origin.1))
////                    }
////                }
////            }
////            blocks[blockNumber].append(block)
////        }
////
////        for r in 0..<table.count {
////            for c in 0..<table.count {
////                if table[r][c] != 0 && !visited2[r][c] {
////                    dfs(r, c)
////                }
////            }
////        }
////    }
//
////    func findAllBlocks() {
////        findFirstBlocks()
////
////        for _ in 0..<3 {
////            rotateTable()
////            findRotatedBlocks()
////        }
////    }
//
//    func findHole(_ r: Int, _ c: Int) -> [(Int, Int)] {
//        let origin = (r, c)
//        var hole = [(0, 0)]
//        var stack = [origin]
//        visited[r][c] = true
//
//        while !stack.isEmpty {
//            let now = stack.popLast()!
//            for i in 0..<4 {
//                let nr = now.0 + dr[i]
//                let nc = now.1 + dc[i]
//                if isValid(nr, nc) && game_board[nr][nc] == 0 && !visited[nr][nc] {
//                    hole.append((nr - origin.0, nc - origin.1))
//                    stack.append((nr, nc))
//                    visited[nr][nc] = true
//                }
//            }
//        }
//
//        return hole
//    }
//
//    func findMatchingBlock(_ hole: [(Int, Int)]) -> Int {
//
//        func isMatching(_ hole: [(Int, Int)], _ block: [(Int, Int)]) -> Bool {
//            guard hole.count == block.count else { return false }
//            let hole = hole.sorted(by: >)
//            let block = block.sorted(by: >)
//            for i in 0..<hole.count {
//                if hole[i].0 != block[i].0 || hole[i].1 != block[i].1 {
//                    return false
//                }
//            }
//            return true
//        }
//
//        for i in 1..<blocks.count {
//            guard blockUsed[i] == false else { continue }
//            for j in 0..<4 {
//                if isMatching(hole, blocks[i][j]) { return i }
//            }
//        }
//
//        return 0
//    }
//
//    var blocks: [[[(Int, Int)]]] = [[]]
//
//    findFirstBlocks()
//    rotateBlocks()
//
//    var visited = Array(repeating: Array(repeating: false, count: game_board.count), count: game_board.count)
//    var blockUsed = Array(repeating: false, count: blocks.count)
//    var filled = 0
//
//    for r in 0..<game_board.count {
//        for c in 0..<game_board.count {
//            if game_board[r][c] == 0 && !visited[r][c] {
//                let hole = findHole(r, c)
//                let matchingBlock = findMatchingBlock(hole)
//                if matchingBlock == 0 {
//                    print(hole.count == 4 ? hole : "")
//                    continue
//                } else {
//                    blockUsed[matchingBlock] = true
//                    filled += hole.count
//                }
//            }
//        }
//    }
//
//    print(blockUsed)
//
//    prettyPrint(blocks)
//
//    return filled
//}
//
//func prettyPrint(_ matrix: [[Int]]) {
//    for i in 0..<matrix.count {
//        print(matrix[i])
//    }
//    print()
//}
//
//func prettyPrint(_ blocks: [[[(Int, Int)]]]) {
//    for i in 1..<blocks.count {
//        print("\(i)번 블록")
//        for j in 0..<4 {
//            print("  \(j)번 회전")
//            for k in 0..<blocks[i][j].count {
//                print("    \(blocks[i][j][k])")
//            }
//        }
//        print()
//    }
//}
//
//print(solution([[1,1,0,0,1,0],[0,0,1,0,1,0],[0,1,1,0,0,1],[1,1,0,1,1,1],[1,0,0,0,1,0],[0,1,1,1,0,0]], [[1,0,0,1,1,0],[1,0,1,0,1,0],[0,1,1,0,1,1],[0,0,1,0,0,0],[1,1,0,1,1,0],[0,1,0,0,0,0]]))
//
////print(solution([[1,0,1],
////                [0,1,0],
////                [1,0,1]],
////
////                [[0,1,0],
////                 [1,0,1],
////                 [0,1,0]]))
