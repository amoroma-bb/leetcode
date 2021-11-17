class Solution:
    def addStrings(self, num1: str, num2: str) -> str:
        def str2num(l):
            res = 0
            for i in l:
                res = res * 10 + ord(i) - ord('0')
            return res
        return str(str2num(num1) + str2num(num2))