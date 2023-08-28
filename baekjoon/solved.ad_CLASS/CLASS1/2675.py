T = int(input())

R = [0] * T
S = [0] * T

for i in range(T):
  R[i], S[i] = map(str, input().split(' '))

for i in range(T):
  for s in S[i]:
    for j in range(int(R[i])):
      print(s, end='')
  print('')