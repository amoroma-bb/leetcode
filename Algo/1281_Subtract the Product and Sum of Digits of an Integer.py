

def sps(n):
    p = 1
    s = 0
    while n >= 10:
        t = divmod(n,10)
        n = t[0]
        p *= t[1]
        s += t[1]
        print(p,s,n)
    p *= n
    s += n
    print(p,s,n)
    return p-s

sps(10225)