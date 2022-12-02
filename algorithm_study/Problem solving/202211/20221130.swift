//
//  20221130.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/02.
//

//func solution(_ arr:[[Int]]) -> [Int] {
//    // 주어진 이차원 배열이 압축이 가능한지 알아보는 함수
//    func isCompressable(_ arr: [[Int]]) -> Bool {
//        // 이차원 배열의 첫 원소
//        let num = arr[0][0]
//
//        // 이차원 배열의 모든 원소가 첫 원소와 같은지 확인
//        for i in 0..<arr.count {
//            for j in 0..<arr.count {
//                // 다르면 false 리턴
//                if arr[i][j] != num { return false }
//            }
//        }
//
//        // 반복문 통과하면 true 리턴
//        return true
//    }
//
//    // arr를 1/4 해주는 함수
//        //👉 i와 j는 0 혹은 1
//    func slice(_ arr: [[Int]], _ i: Int, _ j: Int) -> [[Int]] {
//        let size = arr.count / 2
//        var result = [[Int]]()
//        // 먼저 행을 1/2하고
//        var arr = arr[size * i..<size * (i + 1)]
//        for line in arr {
//            // 그 행을 각각 1/2해서 1/4인 이차원 배열을 만든다.
//            result.append(Array(line[size * j..<size * (j + 1)]))
//        }
//        return result
//    }
//
//    // 재귀함수
//    func sol(_ arr: [[Int]]) -> [Int] {
//        // 결과 저장을 위한 배열
//        var result = [0, 0]
//
//        // 탈출조건 arr의 크기가 1x1일 때
//        if arr.count == 1 {
//            let num = arr[0][0]
//            result[num] += 1 //👉 결과에 내용물을 더하고 리턴
//            return result
//        }
//
//        // 압축할 수 있다면
//        if isCompressable(arr) {
//            let num = arr[0][0]
//            result[num] += 1 //👉 결과에 압축한 숫자를 하나 더하고 리턴
//            return result
//        // 압축할 수 없다면
//        } else {
//            // 4분의 1해서 각각 재귀함수 실행
//            for i in 0..<2 {
//                for j in 0..<2 {
//                    let sliceResult = sol(slice(arr, i, j))
//                    result[0] += sliceResult[0]
//                    result[1] += sliceResult[1]
//                }
//            }
//        }
//
//        return result
//    }
//
//    return sol(arr)
//}

    


//func solution(_ arr:[[Int]]) -> [Int] {
//    // 압축이 가능하면 압축한 숫자, 불가능하면 nil을 리턴하는 함수
//    func compress(_ row: Int, _ col: Int, _ size: Int) -> Int? {
//        // 이차원 배열의 첫 원소
//        let num = arr[row][col]
//
//        // 이차원 배열의 모든 원소가 첫 원소와 같은지 확인
//        for i in row..<(row + size) {
//            for j in col..<(col + size) {
//                // 다르면 nil 리턴
//                if arr[i][j] != num { return nil }
//            }
//        }
//        // 반복문을 통과하면 압축한 숫자를 리턴
//        return num
//    }
//
//    // 재귀함수
//    func sol(_ row: Int, _ col: Int, _ size: Int) -> [Int] {
//        // 결과를 저장할 배열
//        var result = [0, 0]
//
//        // arr의 크기가 1 x 1이면 탈출
//        if size == 1 {
//            result[arr[row][col]] += 1
//            return result
//        }
//
//        // 압축이 가능하면 결과에 반영하고 리턴
//        if let compress = compress(row, col, size) {
//            result[compress] += 1
//            return result
//        // 압축이 불가능한 경우
//        } else {
//            // 사이즈를 1/2로 줄여서 4조각을 다시 재귀함수 돌리기
//            let newSize = size / 2
//            for i in 0..<2 {
//                for j in 0..<2 {
//                    let newRow = row + newSize * i
//                    let newCol = col + newSize * j
//                    let newResult = sol(newRow, newCol, newSize)
//                    result[0] += newResult[0]
//                    result[1] += newResult[1]
//                }
//            }
//        }
//
//        return result
//    }
//
//    let size = arr.count
//
//    return sol(0, 0, size)
//}
//
//
//print(solution([[1,1,0,0],[1,0,0,0],[1,0,0,1],[1,1,1,1]]))
