class Solution:
    def highFive(self, items: List[List[int]]) -> List[List[int]]:
        ids = list(set(i[0] for i in items))
        res = []
        for i in ids:
            t = [v[1] for v in items if v[0] == i]
            t = sum(sorted(t, reverse = True)[:5])
            t = t//5
            res.append([i,t])
            
        return res


        ##
        class Solution:
    def highFive(self, items: List[List[int]]) -> List[List[int]]:
        dic =  {}  
        
        for item in items:
            if item[0] in dic:
                dic[item[0]].append(item[1])
            else:
                dic[item[0]] = [item[1]]
        
        def sort_avg(list):   
            list = sorted(list, reverse = True)
            return int(sum(list[0:5])/5)
        
        final = []
        
        for item in dic:  
            final.append([item, sort_avg(dic[item])])

        return sorted(final, key = lambda k: k[0])