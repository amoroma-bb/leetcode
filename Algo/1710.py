class Solution:
    def maximumUnits(self, boxTypes: List[List[int]], truckSize: int) -> int:
        b = sorted(boxTypes, key = lambda i: i[1], reverse = True)
        
        res = 0
        
        for i in b:
            if i[0] <= truckSize:
                res += i[0]*i[1]
                truckSize -= i[0]
            else:
                res += truckSize * i[1]
                truckSize = 0
        return res