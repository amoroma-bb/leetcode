from itertools import combinations
from collections import Counter
class Solution:
    def findEvenNumbers(self, digits: List[int]) -> List[int]:
        digits = Counter(digits)
        
        dg = []
        
        for d in digits:
            if digits[d] >= 3:
                dg.extend([d]*3)
            else:
                dg.extend([d]*digits[d])
        
        if set(dg) == {0}:
            return []

        t = [i%2 for i in dg]
        if set(t) == {1}:
            return []
        
        res = []
        
        for c in combinations(dg, 3):
            res.append(c)
        
        ans = []
        for i in range(len(res)):
            a = str(res[i][0])
            b = str(res[i][1])
            c = str(res[i][2])
            
            tmp2 = [a+b+c, a+c+b, b+a+c, b+c+a, c+b+a, c+a+b]
            tmp2 = [int(i) for i in tmp2]
            for t in tmp2:
                if (t >=100) and (t%2 == 0):
                    ans.append(t)
        ans = list(set(ans))
        ans.sort()
        return ans