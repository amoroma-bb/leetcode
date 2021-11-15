# brute force
arr1 = [1,4,2,3]
arr2 = [-4,-3,6,10,20,30]
d = 3
cnt = 0
for i in arr1:
    for j in arr2:
        if abs(i-j) <= d:
            break
    else:
        cnt += 1
print(cnt)

# binary search
# find the closest num to i in arr2
# finaaly get the range [low,high]
# min(low-i,high-i) to cal whether the abs is larger than d


res = 0
arr2.sort()
m = len(arr2)
for i in arr1:
    low, high = 0, m-1
    while high - low > 1:
        mid = (low+high)//2
        if i > arr2[mid]:
            low = mid
        else:
            high = mid
    if min(abs(arr2[high]-i),abs(arr2[low]-i)) > d:
        res += 1
print(res)
x = 1