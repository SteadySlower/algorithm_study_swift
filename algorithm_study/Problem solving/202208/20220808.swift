//
//  20220808.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/08.
//

//// 랜선 자르기
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let K = input[0], N = input[1]
//var lines = [Int]()
//for _ in 0..<K {
//    lines.append(Int(readLine()!)!)
//}
//
//// 길이가 size일 때 만들 수 있는 최대 랜선의 갯수
//func count(size: Int) -> Int {
//    var cnt = 0
//
//    for line in lines {
//        cnt += line / size
//    }
//
//    return cnt
//}
//
//// 이진탐색 초기 값
//var start = 1
//    //👉 최대한 많이 만들 수 있음
//var end = lines.max()!
//    //👉 1개 밖에 못만듬
//var ans = 0
//
//// 파라메트릭 서치 구현
//while start <= end {
//    let mid = (start + end) / 2
//
//    if count(size: mid) >= N {
//        start = mid + 1
//        ans = mid
//    } else {
//        end = mid - 1
//    }
//}
//
//print(ans)


//// 기타레슨

//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let lectures = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//// 어떤 size의 블루레이에 대해서 몇장의 블루레이가 필요한지 계산
//func cntBR(size: Int) -> Int {
//    var current = size
//    var cnt = 1
//
//    for lecture in lectures {
//        if current < lecture {
//            cnt += 1
//            current = size
//        }
//        current -= lecture
//    }
//
//    return cnt
//}
//
//// 초기값
//var start = lectures.max()!
//    //👉 적어도 가장 큰 강의 1개는 담을 수 있어야 함
//var end = lectures.reduce(0, +)
//    //👉 한 블루레이에 모든 강의를 담을 수 있는 경우
//var ans = 0
//
//// 이진탐색 구현
//while start <= end {
//    let mid = (start + end) / 2
//
//    if cntBR(size: mid) <= M {
//        end = mid - 1
//        ans = mid
//    } else {
//        start = mid + 1
//    }
//}
//
//print(ans)
