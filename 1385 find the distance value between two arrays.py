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