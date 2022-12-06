//
//  20221206.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/06.
//

//// O(N)의 시간복잡도를 가진 풀이
//func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
//    // 필요한 기지국의 갯수
//    var ans = 0
//
//    // 아파트를 배열로 (신호가 닿으면 true, 닿지 않으면 false)
//    var apts = Array(repeating: false, count: n + 1)
//
//    // 기지국이 커버하는 범위를 apts에 표시한다.
//    for station in stations {
//        let coverage = (station - w...station + w)
//        for i in coverage {
//            // apt의 범위를 벗어나지 않는지 체크
//            if 1..<(n + 1) ~= i { apts[i] = true }
//        }
//    }
//
//    // index의 왼쪽에 남아 있는 전파가 닿지 않는 apt의 갯수
//    var left = 0
//    // 현재의 아파트 위치
//    var index = 1
//
//    // 아파트를 순회하면서 필요할 때마다 기지국을 세우기
//    while index < n + 1 {
//        // 현재 아파트가 전파가 닿지 않을 때
//        if apts[index] == false {
//            // 왼쪽에 w만큼의 전파가 닿지 않는 아파트가 있는 경우 -> index 위치에 기지국을 세운다.
//            if left == w {
//                index += w + 1 //👉 index 위치에 세우면 오른쪽 w개 만큼 커버가 되므로 index를 그 다음으로 이동
//                ans += 1 //👉 기지국 1개 추가
//                left = 0 //👉 index 위치에 기지국을 세웠으므로 전파가 닿지 않는 아파트 0개
//            // 왼쪽에 전파가 닿지 않는 아파트가 w개 미만인 경우 -> 나중에 세워도 된다.
//            } else {
//                left += 1
//                index += 1
//            }
//        // 현재 아파트에 전파가 닿을 때
//        } else {
//            // 왼쪽에 전파가 닿지 않는 아파트가 1개라도 있는 경우 -> 기지국이 1개 필요함
//            if left != 0 {
//                index += w + 1
//                ans += 1
//                left = 0
//            // 왼쪽에 전파가 닿지 않는 아파트가 없는 경우 -> 기지국 필요 없음
//            } else {
//                index += 1
//            }
//        }
//    }
//
//    // 모든 index 끝까지 갔는데 전파가 닿지 않는 아파트가 남은 경우 -> 기지국 1개 필요함
//    if left != 0 { ans += 1 }
//
//    return ans
//}
//
//print(solution(11, [4, 11], 1))

//import Foundation
//
//func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
//    var ans = 0
//    let coverage = Double(w * 2 + 1)
//    var now = 1
//
//    for s in stations {
//        let left = Double(s - w - now)
//        ans += Int(ceil(left / coverage))
//        now = s + w + 1
//    }
//
//    if n >= now {
//        let right = Double(n - now + 1)
//        ans += Int(ceil(right / coverage))
//    }
//
//    return ans
//}
