a, b = map(int, input().split())

G = 0
L = 0

for i in range(10000, 0, -1):
  a_result = a % i
  b_result = b % i
  if a_result == 0 and b_result == 0:
    G = i
    L = G * a // i * b // i
    break

print(G)
print(L)