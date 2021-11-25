class Solution:
    def removeVowels(self, s: str) -> str:
        v = ['a','e','i','o','u']
        s1 = ''
        for i in s:
            if i not in v:
                s1 += i

        return s1
