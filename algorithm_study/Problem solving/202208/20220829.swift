//
//  20220829.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/29.
//

//import Foundation
//
//// 소수임을 알아보는 extension
//extension Int {
//    var isPrim: Bool {
//        // 1보다 작거나 같은 수는 소수가 아니다.
//        if self <= 1 { return false }
//
//        // 2 ~ (self - 1) 중에 나누어 떨어지는 수가 있으면 false
//        for i in 2..<self {
//            if self % i == 0 { return false }
//        }
//
//        return true
//    }
//}
//
//func solution(_ numbers:String) -> Int {
//    // dfs 구현
//    func dfs(_ now: Int) {
//        // 소수인지 확인하고 소수이면 집합에 넣는다.
//        if now.isPrim {
//            prims.insert(now)
//        }
//
//        // 완전 탐색
//        for i in 0..<nums.count {
//            if !visited[i] {
//                visited[i] = true
//                dfs(now * 10 + nums[i]) //👉 새로운 숫자카드를 기존 숫자 뒤에 붙인다
//                visited[i] = false
//            }
//        }
//    }
//
//    // 입력을 숫자들의 배열로 만든다.
//    let nums = numbers.map { Int(String($0))! }
//    // 중복제거를 위해 집합을 사용한다.
//    var prims = Set<Int>()
//    var visited = Array(repeating: false, count: nums.count)
//
//    dfs(0)
//
//    return prims.count
//}


//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    // 장르별 플레이 횟수 세기
//    func countPlaysPerGenres() -> [String : Int] {
//        var result = [String : Int]()
//
//        // 고유번호 i의 장르를 key에 고유번호 i의 재생횟수를 더한다.
//        for i in 0..<genres.count {
//            result[genres[i], default: 0] += plays[i]
//            //👉 dictionary의 default가 이런 상황에 아주 유용!
//        }
//
//        return result
//    }
//
//    // 장르별 플레이 횟수
//    let playsPerGenre = countPlaysPerGenres()
//
//    // 결과를 저장할 배열
//    var result = [Int]()
//
//    // 장르의 key를 플레이 횟수의 내림차순으로 정렬해서 순회한다.
//        //👉 조건 1. 속한 노래가 많이 재생된 장르를 먼저 수록합니다.
//    for genre in playsPerGenre.keys.sorted(by: { playsPerGenre[$0]! > playsPerGenre[$1]! }) {
//        var interim = [Int]()
//        // 해당 장르에 속하는 노래의 고유번호(i)를 임시 배열에 저장
//        for i in 0..<plays.count {
//            if genres[i] == genre { interim.append(i) }
//        }
//        // 고유 번호들의 배열을 재생이 많은 순으로 정렬
//            //👉 조건 2. 장르 내에서 많이 재생된 노래를 먼저 수록합니다.
//            //👉 조건 3. 장르 내에서 재생 횟수가 같은 노래 중에서는 고유 번호가 낮은 노래를 먼저 수록합니다. (이 배열은 이미 고유번호 순으로 정렬되어 있으므로 별도의 정렬 필요 없음)
//        interim.sort(by: { plays[$0] > plays[$1] })
//        // 만약에 해당 장르의 곡이 1개라면 1개만 노래에 담아야 함.
//        let numOfSong = interim.count > 1 ? 2 : 1
//        // 결과 배열에 상위 2곡만 담는다.
//        result.append(contentsOf: interim[0..<numOfSong])
//    }
//
//    return result
//}
