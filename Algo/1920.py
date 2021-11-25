class Solution:
    def buildArray(self, nums: List[int]) -> List[int]:
        res = [0 for i in range(len(nums))]

        for i in range(len(nums)):
            res[i] = nums[nums[i]]

        return res
