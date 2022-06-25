//Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

//Example 1:
//
//Input: nums = [1,2,3,1], k = 3
//Output: true



    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()
        for (i, value) in nums.enumerated() {
            if let _ = dict[value]  {
              if abs(dict[value]! - i) <= k {
                return true
            }
           
            }
           
        dict[value] = i
    }
      return false
    }
var test = [1,2,3,1,2,3]
var k = 2

print(containsNearbyDuplicate(test, k))

