n = int(input())
nums = list(map(int, input().split(" ")))

dp = [0] * n
for i in range(n):
    maxNum = 1
    for j in range(0, i):
        if nums[i] > nums[j]:
            num = dp[j] + 1
            if num > maxNum: maxNum = num
    dp[i] = maxNum

print(max(dp))