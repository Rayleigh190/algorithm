import sys
read = sys.stdin.readline

T = int(read())

for _ in range(T):
  N = int(read())

  # 탐색 데이터 : 승택이가 밟은 징검다리 수
  start = 0
  end = 1000000000

  while start <= end:
    mid = (start + end) // 2
    result = (mid + 1) * mid / 2 # mid에 대한 징검다리의 총 개수
    if result > N:
      end = mid - 1
    else:
      start = mid + 1

  print(end)