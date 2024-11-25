N = int(input())
dp = [1, 1, 1, 2, 2, 3, 4, 5, 7, 9] + [0] * 90

for i in range(10, 100):
    dp[i] = dp[i-2] + dp[i-3]

for _ in range(N):
    print(dp[int(input())-1])