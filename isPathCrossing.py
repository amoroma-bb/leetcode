path = 'SNWSENS'
d = {'N':[0,1],'E':[1,0],'W':[-1,0],'S':[0,-1]}
seen = set()
seen.add((0,0))
x,y = 0,0
for i in path:
    x += d[i][0]
    y += d[i][1]
    
    if (x,y) not in seen:
        seen.add((x,y))
        print(seen)
