from collections import deque

n, k = map(int, input().split())

deq = deque([i for i in range(1, n+1)])

res = []
while len(deq) != 0:
  for _ in range(k-1):
    deq.append(deq.popleft())
  res.append(str(deq.popleft()))

print('<'+', '.join(res)+'>')

# 아래는 왜 안 되지?
# N, K = map(int, input().split())
# nums = [i for i in range(1, N+1)]
# res = []

# for _ in range(N):
#   if len(nums) < K:
#     break
#   res.append(nums[K-1:K][0])
#   nums = nums[K:]+nums[:K-1]

# for num in nums:
#   res.append(num)

# print('<'+', '.join(map(str, res))+'>')