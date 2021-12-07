class Solution:
    def smallestEqual(self, nums: List[int]) -> int:
        cur = -1
        for i in range(len(nums)):
            if i % 10 == nums[i]:
                cur = i
                return cur
        return cur