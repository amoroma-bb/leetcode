class Solution:
    def getConcatenation(self, nums: List[int]) -> List[int]:
        res = [0 for i in range(2*len(nums))]

        for i in range(len(res)):
            if i < len(nums):
                res[i] = nums[i]
            else:
                res[i] = nums[i-len(nums)]

        return res
