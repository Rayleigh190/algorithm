N = int(input())
A = list(map(int, input().split()))

def dp(array):
    cache = [1] * N
    for i in range(N):
        for j in range(i):
            if A[i] > A[j]:
                cache[i] = max(cache[i], cache[j] + 1)
    return cache

upCache = dp(A)
A.reverse()
downCache = dp(A)
downCache.reverse()

maxResult = 0
for i in range(N):
    maxResult = max(maxResult, upCache[i] + downCache[i] - 1)
print(maxResult)