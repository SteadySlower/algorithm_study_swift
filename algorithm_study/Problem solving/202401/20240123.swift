//
//  20240123.swift
//  algorithm_study
//
//  Created by JW Moon on 1/23/24.
//

// [7,1,5,3,6,4]
// [-6, 4, -2, 3, -2]

//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        var minPrice = prices[0]
//        var profit = 0
//
//        for price in prices {
//            profit = max(profit, price - minPrice)
//            minPrice = min(minPrice, price)
//        }
//
//        return profit
//    }
//}
//
//print(Solution().maxProfit([7,1,5,3,6,4]))
