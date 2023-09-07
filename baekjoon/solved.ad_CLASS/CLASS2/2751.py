import sys

N = int(input())
nums = [int(sys.stdin.readline()) for _ in range(N)]
nums.sort()

for num in nums:
  print(num)