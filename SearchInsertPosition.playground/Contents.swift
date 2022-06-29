import UIKit

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty { return 0 }
        
        if nums.count == 1, let onlyVal = nums.first {
            return target > onlyVal ? 1 : 0
        }
        
        for i in 0...nums.count - 1 {
            if nums[i] == target || nums[i] > target  {
                return i
            }
        }
        return nums.count
}
var nums = [1,3,5,9]
var target = 7

//print(searchInsert(nums, target))

