//
//  20230624.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/26.
//

/*
 1. 일단 수직선에 표시한다.
    - 수직선에는 s..<e로 기록한다.
    - 수직선 숫자에 0.5씩 더해서 미사일 쏘는 구간이라고 생각하면 된다.
    - 왜냐면 s, e에서 쏘면 못 맞추니까
 2. 미사일들을 시작점을 기준으로 정렬한다.
 3. 그리고 미사일의 범위를 처음부터 탐색하면서
    - 가장 겹치는 부분이 많은 곳에서 쏜다.
 4. 최근에 쏜 요격미사일과 겹치는 미사일은 pass
 5. 최근 요격 미사일 갱신해가면서 맞추면 된다.
 */

//func solution(_ targets:[[Int]]) -> Int {
//
//    // 두 영역의 겹치는 부분 구하기
//    func getOverlappingRange(_ range1: [Int], _ range2: [Int]) -> [Int]? {
//        if range2[0] < range1[1] {
//            return [range2[0], min(range1[1], range2[1])]
//        } else {
//            return nil
//        }
//    }
//
//    // 정렬: 시작점 순 -> 같으면 끝점
//    let targets = targets.sorted { t1, t2 in
//        if t1[0] == t2[0] {
//            return t1[1] < t2[1]
//        } else {
//            return t1[0] < t2[0]
//        }
//    }
//
//    var ans = 1
//    var now = targets[0]
//
//    // 겹치는 부분을 업데이트 하면서 미사일 1개로 커버 가능할 때까지 좁히고
//    // 안되면 다시 1개 쏘는 방법
//    // 일종의 그리디
//    for i in 1..<targets.count {
//        if let overlappingRange = getOverlappingRange(now, targets[i]) {
//            now = overlappingRange
//        } else {
//            now = targets[i]
//            ans += 1
//        }
//    }
//
//    return ans
//}

//func solution(_ targets:[[Int]]) -> Int {
//
//    // 정렬: 끝점을 기준으로 내림차순, (같으면 시작점)
//    let targets = targets.sorted { t1, t2 in
//        if t1[1] == t2[1] {
//            return t1[0] < t2[0]
//        } else {
//            return t1[1] < t2[1]
//        }
//    }
//
//    // 현재 요격 미사일 갯수
//    var ans = 0
//    // 현재 요격 미사일을 쏘는 위치
//    var nowEnd = 0
//
//    // 폭격 미사일이 겹치는 조건: 시작점 < 끝점
//    for target in targets {
//        if target[0] >= nowEnd {
//            ans += 1
//            nowEnd = target[1]
//        }
//    }
//
//    return ans
//}
//
//print(solution([[4,5],[4,8],[10,14],[11,13],[5,12],[3,7],[1,4]]))
