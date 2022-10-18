//
//  20221018.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/18.
//

struct Cache {
    let size: Int
    private var cache = [String]()
    
    init(_ size: Int) {
        self.size = size
    }
    
    mutating func search(_ city: String) -> Int {
        if cache.contains(city) {
            let index = cache.firstIndex(of: city)!
            cache.swapAt(0, index)
            return 1
        } else {
            updateCache(city)
            return 5
        }
    }
    
    mutating func updateCache(_ city: String) {
        guard cache.count == size else { return }
        _ = cache.removeLast()
        cache.insert(city, at: 0)
    }
}

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var cache = Cache(cacheSize)
    var ans = 0
    
    for city in cities {
        ans += cache.search(city)
    }
    
    return ans
}
