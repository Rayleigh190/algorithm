import sys

def factorial(n):
  if n == 0:
    return 1
  return n * factorial(n-1)

input = sys.stdin.readline
N, K = map(int, input().split())

print(factorial(N)//(factorial(K)*factorial(N-K)))