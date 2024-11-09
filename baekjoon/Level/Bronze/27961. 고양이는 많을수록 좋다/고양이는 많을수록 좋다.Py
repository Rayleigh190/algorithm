N = int(input())
n = 0
result = 0

while N > n:
    if n == 0:
        n += 1
    else:
        n *= 2
    result += 1

print(result)