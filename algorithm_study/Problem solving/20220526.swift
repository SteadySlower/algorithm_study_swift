//
//  20220526.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/26.
//

let N = Int(readLine()!)!
let nums = Array(1...N)

func permutations<T: Equatable>(of array: Array<T>, length: Int) -> [[T]] {
    var result = [[T]]()
    var visited = Array(repeating: false, count: array.count)
    
    func permutation(_ now: Array<T>) {
        if now.count == length {
            result.append(now)
            return
        }
        for i in 0..<array.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permutation(now + [array[i]])
                visited[i] = false
            }
        }
    }
    permutation([])
    return result
}

permutations(of: nums, length: N).forEach { permutation in
    permutation.forEach { num in
        print(num, terminator: " ")
    }
    print()
}
