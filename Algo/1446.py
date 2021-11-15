class Solution:
    def maxPower(self, s: str) -> int:
        if len(s) == 1:
            return 1
        total = 0
        a = 1
        for i in range(len(s)-1):
            if s[i] == s[i+1]:
                a += 1
                if a > total:
                    total = a
            else:
                if a > total:
                    total = a
                a = 1
        return total