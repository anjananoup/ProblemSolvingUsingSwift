//
//  240.swift
//  ProblemSolving
//
//  Created by Anjan on 12/20/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class Leed240: Solution {
    func executeMain() {
        print(Solution().searchMatrix([
          [1,   4,  7, 11, 15],
          [2,   5,  8, 12, 19],
          [3,   6,  9, 16, 22],
          [10, 13, 14, 17, 24],
          [18, 21, 23, 26, 30]
        ], 0))
    }
    
    class Solution {
        func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
            guard matrix.count > 0, matrix[0].count > 0 else {
                return false
            }
            
            let row = matrix.count
            let col = matrix[0].count
            
            var left = col - 1
            var bottom = 0
            
            while left >= 0 && bottom < row {
                if matrix[bottom][left] == target {
                    return true
                }
                if matrix[bottom][left] < target {
                    bottom += 1
                } else if matrix[bottom][left] > target {
                    left -= 1
                }
            }

            return false
        }
    }
}
