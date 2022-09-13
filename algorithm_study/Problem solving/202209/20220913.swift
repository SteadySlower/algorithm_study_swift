//
//  20220913.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/13.
//

/*
 
 위치의 배열: [2, 14, 11, 21, 17] -> [2, 11, 14, 17, 21]
 
 거리의 배열: [2, 9, 3, 3, 4, 4]
 
 */


//func solution(_ distance:Int, _ rocks:[Int], _ n:Int) -> Int {
//
//    // 이분 탐색 시작점, 끝점
//    var start = 1
//    var end = distance
//
//    // 답 저장용 변수
//    var ans = 0
//
//    // 바위 정렬 + 앞뒤에 출발지점 및 도착지점 추가
//    let rocks = [0] + rocks.sorted() + [distance]
//
//    // 이분탐색 구현
//    while start <= end {
//        let mid = (start + end) / 2
//
//        // 제거한 바위 갯수
//        var removed = 0
//
//        // 현재 바위 위치 (= 파괴 안한 마지막 바위)
//        var now = 0 //👉 초기 값은 출발지점
//
//        // 바위 사이의 최소 간격
//        var minGap = Int.max
//
//        // 바위들을 순회하면서 (출발지점 제외)
//        for i in 1..<rocks.count {
//            // 현재 바위 ~ 다음 바위까지의 거리 (now ~ i 사이의 다른 바위들은 제거됨)
//            let gap = rocks[i] - rocks[now]
//
//            // 거리가 mid 보다 작으면
//            if gap < mid {
//                removed += 1 //👉 i 번째 바위 제거
//            // 거리가 mid 보다 크다면
//            } else {
//                // 최소 간격 업데이트하고
//                minGap = min(minGap, gap)
//                now = i //👉 현재 바위 위치 이동 (= 파괴 안한 마지막 바위)
//            }
//        }
//
//        // n개 보다 더 많이 부쉈다면 간격 줄이기
//        if removed > n {
//            end = mid - 1
//        // n개 보다 같거나 적게 부쉈다면
//        } else {
//            start = mid + 1 //👉 간격 늘리기
//            ans = minGap //👉 답 갱신하기
//        }
//    }
//
//    return ans
//}
//
//print(solution(25, [2, 14, 11, 21, 17], 2))
