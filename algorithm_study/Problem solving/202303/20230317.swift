//
//  20230317.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/17.
//

/*
func isPalin(_ s: [Character]) -> Bool {
    
    let count = s.count
    let half = s.count / 2
    
    for i in 0..<half {
        if s[i] != s[count - i - 1] {
            return false
        }
    }
    
    return true
}

func solution(_ s:String) -> Int {
    
    let s = s.map { $0 }
    var ans = 0
    
    func createSubString(_ from: Int, _ to: Int) -> [Character] {
        
        var result = [Character]()
        
        for i in from...to {
            result.append(s[i])
        }
        
        return result
    }
    
    func dfs(_ from: Int, _ to: Int) {
        let subString = createSubString(from, to)
        
        if isPalin(subString) {
            ans = max(ans, subString.count)
            return
        }
        
        let nFrom = from + 1
        let nTo = to - 1
        
        if nFrom <= to {
            dfs(nFrom, to)
        }
        
        if nTo >= from {
            dfs(from, nTo)
        }
    }
    
    dfs(0, s.count - 1)

    return ans
}
*/

//func solution(_ s:String) -> Int {
//
//    let s = s.map { $0 }
//    var dp = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
//    var length = 1
//
//    // 초기 값
//    for i in 0..<s.count {
//        dp[i][i] = true
//        if i + 1 < s.count && s[i] == s[i + 1] {
//            dp[i][i + 1] = true
//            length = 2
//        }
//    }
//
//    // 길이 별로 양쪽 검색하기
//    while length <= s.count {
//        var i = 1
//        var flag = false
//
//        while i + length + 1 < s.count {
//            if dp[i + 1][i + length] == true && dp[i] == dp[i + length + 1] {
//                dp[i][i + length + 1] = true
//                flag = true
//            }
//            i += 1
//        }
//
//        if !flag { break }
//
//        length += 1
//
//    }
//
//    return length
//}
//
//
//print(solution("abcdcba"))
