import sys
read = sys.stdin.readline
x, y = map(int, read().split())
z = y * 100 // x

start = 0
end = x
result = -1

while start <= end:
  mid = (start + end) // 2
  nx = x + mid
  ny = y + mid
  nz = ny * 100 // nx
  if nz > z:
    result = mid
    end = mid - 1
  else:
    start = mid + 1

print(result)