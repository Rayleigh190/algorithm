from sys import stdin
from collections import Counter

N = int(input())
Ns = list(map(int, stdin.readline().split()))
M = int(input())
Ms = list(map(int, stdin.readline().split()))

counts = Counter(Ns)

for m in Ms:
  if m in counts:
    print(counts[m], end=' ')
  else:
    print(0, end=' ')