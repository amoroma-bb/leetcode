class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        n = sorted(nums)
        return n[-1*k]


from heapq import heapify, heappop
class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        heapify(nums)

        while len(nums) > k:
            heappop(nums)
        return nums[0]
