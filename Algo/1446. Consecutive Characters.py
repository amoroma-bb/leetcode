class Solution:
    def maxPower(self,s:str) -> int:
        a = []
        if len(set(s)) == 1:
            return len(set)
        while (len(s)>=1) and (len(set(s)) != 1):
            start = s[0]
            for i in range(1,len(s)):
                if s[i] == s[0]:
                    start += s[i]
                else:
                    if len(s) == 1:
                        break
                    else:
                        s = s[i:]
                        a.append(start)
                        print(s)
                        break
        a.append(s)
        a = [len(i) for i in a]
        print(a)
        return max(a)

s = Solution()
s.maxPower(s= "aabbbbbccccdddddddeffffffggghhhhhiiiiijjjkkkkkllllmmmmmnnnnnoopppqrrrrsssttttuuuuvvvvwwwwwwwxxxxxyyyzzzzzzzz")
