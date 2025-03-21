N = int(input())
people = []
for _ in range(N):
    people.append(int(input()))

dp = [1] * N
for i in range(N):
    for j in range(i):
        if people[i] > people[j]:
            dp[i] = max(dp[i], dp[j] + 1)

print(N - max(dp))