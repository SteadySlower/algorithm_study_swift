//
//  20221207.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/08.
//

//import Foundation
//
//func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
//    // 기지국 갯수
//    var ans = 0
//    // 하나의 기지국이 커버할 수 있는 범위
//        //👉 ceil(올림)을 사용하기 위해서 Double로 캐스팅
//    let coverage = Double(w * 2 + 1)
//
//    // 지금까지 순회한 기지국이 커버하지 못하는 가장 첫 아파트
//        //👉 현재 기지국 순회 전이므로 가장 처음 아파트
//    var now = 1
//
//    // 기지국을 순회하면서
//    for s in stations {
//        // 현재 기지국과 이전 기지국 사이에 존재하는 전파가 닿지 않는 아파트의 갯수 (현재 기지국 기준으로 왼쪽)
//            //👉 ceil(올림)을 사용하기 위해서 Double로 캐스팅
//        let left = Double(s - w - now)
//
//        // 필요한 기지국의 갯수 더하기
//            //👉 (전파 없는 아파트 갯수 / 하나의 기지국의 커버 범위)를 올림한 것
//        ans += Int(ceil(left / coverage))
//
//        // 현재의 기지국이 커버할 수 범위보다 하나 오른쪽에 있는 아파트
//        now = s + w + 1
//    }
//
//    // 모든 기지국을 순회했을 때 아직 커버하지 못하는 아파트가 남아 있다면 (마지막 기지국 기준으로 오른쪽)
//    if n >= now {
//        // 필요한 만큼 기지국을 세운다
//        let right = Double(n - now + 1)
//        ans += Int(ceil(right / coverage))
//    }
//
//    return ans
//}
