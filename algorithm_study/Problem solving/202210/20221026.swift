//
//  20221026.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/26.
//

//struct Cache {
//    private var log = [String]()
//    private var data = Set<String>()
//    private let size: Int
//
//    init(size: Int) {
//        self.size = size
//    }
//
//    mutating func isHit(_ city: String) -> Bool {
//        if size == 0 { return false }
//
//        if data.contains(city) {
//            log.append(city)
//            return true
//        } else {
//            if data.count == size {
//                data.remove(log[log.count - size])
//            }
//            data.insert(city)
//            log.append(city)
//            return false
//        }
//    }
//}

//// 캐시 구조체
//struct Cache {
//    private var data = [String]()
//    private let size: Int
//
//    init(size: Int) {
//        self.size = size
//    }
//
//    // 캐시가 히트 했는지 알아보는 함수
//    mutating func isHit(_ city: String) -> Bool {
//        // 히트했다면?
//        if data.contains(city) {
//            // 해당 city를 가장 마지막 index로 옮겨주기
//                //🚫 참고로 swap하면 안되고 지우고 append해주어야 함 (swap하면 LRU의 원칙에 어긋남)
//            let cityIndex = data.lastIndex(of: city)!
//            data.remove(at: cityIndex)
//            data.append(city)
//            return true
//        // 미스 했다면?
//        } else {
//            // 캐시에 도시 추가
//            data.append(city)
//            // 캐시 용량 다 찼다면 LRU한 도시(= data의 가장 첫 도시)를 삭제
//            if data.count > size {
//                _ = data.removeFirst()
//            }
//            return false
//        }
//    }
//}
//
//func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
//
//    var ans = 0
//    var cache = Cache(size: cacheSize)
//
//    for city in cities {
//        // 대소문자 구분 하지 않으므로 소문자로 모두 바꾸기
//        if cache.isHit(city.lowercased()) {
//            ans += 1
//        } else {
//            ans += 5
//        }
//    }
//
//    return ans
//}
//
////print(solution(2, ["Jeju", "Pangyo", "NewYork", "newyork"]))
//print(solution(5, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"]))
