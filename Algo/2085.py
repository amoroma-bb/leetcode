from collections import Counter
class Solution:
    def countWords(self, words1: List[str], words2: List[str]) -> int:
        w1, w2 = Counter(words1), Counter(words2)
        res = []
        for i in w1:
            if i in w2 and w1[i] == w2[i] and w1[i] == 1:
                res.append(i)
        
        return len(res)
        # return sum(1 for k in w2 if w1[k] == 1 and w2[k] == 1)