//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
//
//
//
//Example 1:
//
//Input: nums = [1,2,3,1]
//Output: true



    func containsDuplicate(_ nums: [Int]) -> Bool {
      let elementSet = Set(nums)
        if nums.count == elementSet.count {
            return false
        }
        else {
            return true
        }
    }
var test = [1,2,3,1]
print(containsDuplicate(test))
