//
//  74.swift
//  ProblemSolving
//
//  Created by Anjan on 12/20/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class Leet74: Solution {
    func executeMain() {
        print(Solution().searchMatrix([
          [1,   3,  5,  7],
          [10, 11, 16, 20],
          [23, 30, 34, 50]
        ], 34))
    }
    
    class Solution {
        func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
            if matrix.isEmpty || matrix.first!.isEmpty {
                return false
            }
            var top = 0
            var bottom = matrix.count - 1
            var left = 0
            var right = matrix[0].count - 1
            
            var middle = 0
            while top <= bottom {
                middle = Int((Double(top + bottom) / 2).rounded(.awayFromZero))
                
                if matrix[top][0] == target || matrix[bottom][0] == target || matrix[middle][0] == target {
                    return true
                }
                
                if target < matrix[top][0] { //not exist
                    return false
                }
                if target > matrix[bottom][0] { //last row
                    top = bottom
                    break
                }
                
                if matrix[middle][0] < target {
                    top = middle
                } else if matrix[middle][0] > target {
                    bottom = middle - 1
                }
            }
            
            while left <= right {
                middle = Int((Double(left + right) / 2).rounded(.awayFromZero))
                
                if matrix[top][left] == target || matrix[top][right] == target || matrix[top][middle] == target {
                    return true
                }
                
                if target < matrix[top][left] { //not exist
                    return false
                }
                if target > matrix[top][right] { //last row
                    return false
                }
                
                if matrix[top][middle] < target {
                    left = middle
                } else if matrix[top][middle] > target {
                    right = middle - 1
                }
            }
            
            return false
        }
    }
}
