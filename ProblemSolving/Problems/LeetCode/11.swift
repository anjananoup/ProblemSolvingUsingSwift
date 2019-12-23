//
//  11.swift
//  ProblemSolving
//
//  Created by Anjan Kumar Majumder on 12/24/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class Leet11: Solution {
    func executeMain() {
        print(Solution().maxArea([1,8,6,2,5,4,8,3,7]))
    }
    
    class Solution {
        func maxArea(_ height: [Int]) -> Int {
            var result = 0, left = 0, right = height.count - 1
            while left < right {
                result = max(result, (right - left) * min(height[left], height[right]))
                height[left] > height[right] ? (right -= 1) : (left += 1)
            }
            return result
        }
    }
}
