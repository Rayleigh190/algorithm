N, M = map(int, input().split())
heighs = list(map(int, input().split()))

start = 1
end = max(heighs)

while start <= end:
  mid = (start + end) // 2
  length = 0
  for heigh in heighs:
    if heigh > mid:
      length += heigh - mid
  if length >= M:
    start = mid + 1
  else:
    end = mid - 1

print(end)