
//Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
//
//A subarray is a contiguous part of an array.
//
//
//
//Example 1:
//
//Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
//Output: 6
//Explanation: [4,-1,2,1] has the largest sum = 6.


    func maxSubArray(_ nums: [Int]) -> Int {
     var currentSum = 0
     var maxSubArray = nums[0]
      
      for n in nums {
        if currentSum < 0 {
          currentSum = 0
        }
          currentSum += n
          maxSubArray = max(maxSubArray, currentSum)
        }
      return maxSubArray
    }

var test = [-2,1,-3,4,-1,2,1,-5,4]
print(maxSubArray(test))
