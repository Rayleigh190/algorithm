X = int(input())
N = int(input())

a = [0] * N
b = [0] * N

for i in range(N):
  a[i], b[i] = map(int, input().split(' '))

result = 0
for i in range(N):
  result += a[i] * b[i]

if X == result: print('Yes')
else: print('No')