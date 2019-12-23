//
//  42.swift
//  ProblemSolving
//
//  Created by Anjan Kumar Majumder on 12/23/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class Leet42: Solution {
    func executeMain() {
        print(Solution().trap([0,1,0,2,1,0,1,3,2,1,2,1]))
    }
    
    class Solution {
//        func max(_ x: Int, _ y: Int) -> Int {
//            return x > y ? x : y
//        }
//        func min(_ x: Int, _ y: Int) -> Int {
//            return x < y ? x : y
//        }
        
        func trap(_ height: [Int]) -> Int {
            var result: Int = 0
            let size = height.count
            if size == 0 {
                return 0
            }
            var leftHeight = [Int](repeating: 0, count: size)
            var rightHeight = leftHeight
            var leftMax = height[0]
            var rightMax = height[size - 1]
            var rev = size - 1
            for index in 0..<size {
                leftMax = max(leftMax, height[index])
                leftHeight[index] = leftMax
                rightMax = max(rightMax, height[rev])
                rightHeight[rev] = rightMax
                rev -= 1
            }
            
            for index in 0..<size {
                result += abs(min(leftHeight[index], rightHeight[index]) - height[index])
            }
            
            return result
        }
    }
}
