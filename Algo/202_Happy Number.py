#Soloution 1 

class Solution():
    def isHappy1(self,n:int) ->bool:
        seen = set()
        while n not in seen:
            seen.add(n)
            n = sum(int(i)**2 for i in str(n))
            print(n)
        return True if n == 1 else False
    
    def isHappy2(self,n:int) -> bool:
        while n != 1:
            n = sum([int(i)**2 for i in str(n)])
            if n == 4:
                return False
        print(n)
        return True
