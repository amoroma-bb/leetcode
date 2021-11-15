s = "Let's take LeetCode contest"
s = s.split(" ")
ans = ''
for x in s:
    x = x[::-1]
    ans = ans + x + ' '
print(ans[:-1])