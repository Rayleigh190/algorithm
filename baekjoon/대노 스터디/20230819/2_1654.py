K, N = map(int, input().split())

lans = [0]*K
for i in range(K):
  lans[i] = int(input())

start = 1
end = max(lans)

while start <= end:
  mid  = (start + end) // 2
  count = 0
  for lan in lans:
    count += lan//mid
  if count >= N:
    start = mid + 1
  else:
    end = mid - 1

print(end)
