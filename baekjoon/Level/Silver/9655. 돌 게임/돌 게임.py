# 방법 1 : 홀짝
print("CY") if int(input())%2 == 0 else print("SK")

# 방법 2 : DP
N = int(input())

dp = [0] * 1000
dp[0] = 1
dp[1] = 2
dp[2] = 1

for i in range(3, N):
    if dp[i-1] == 1 or dp[i-3] == 1: dp[i] = 2
    else: dp[i] = 1

print("SK") if dp[N-1] == 1 else print("CY")