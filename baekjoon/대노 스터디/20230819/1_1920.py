def bs(target, start, end, data):
  if start > end:
    return 0
  
  mid = (start + end) // 2

  if data[mid] == target:
    return 1
  elif data[mid] > target:
    end = mid - 1
  else:
    start = mid + 1
  
  return bs(target, start, end, data)

N = int(input())
A = list(map(int, input().split()))
M = int(input())
B = list(map(int, input().split()))

A.sort()

for b in B:
  result = bs(b, 0, N-1, A)
  print(result)