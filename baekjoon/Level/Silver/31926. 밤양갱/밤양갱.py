N = int(input())

count = 0
k = N
while k > 1:
    k = k // 2
    count += 1

print(10 + count)