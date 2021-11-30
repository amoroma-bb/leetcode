class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        d = {}
        res = []
        for i in strs:
            sl_i = tuple(sorted(i))
            if not d:
                d[sl_i] = 0
                res.append([i])
            else:
                if sl_i in d:
                    idx = d[sl_i]
                    res[idx].append(i)
                else:
                    d[sl_i] = len(d)
                    res.append([])
                    res[-1].append(i)


        return res


##
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        d = collections.defaultdict(list)
        for st in strs:
            s = ''.join(sorted(st))
            d[s].append(st)

        return d.values()
# defaultdict.values() can return a list including all values
