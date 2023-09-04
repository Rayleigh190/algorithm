N = int(input())

array = []

for i in range(N):
  array.append(list(map(int, input().split())))

array.sort()

for i in array:
  print(f"{i[0]} {i[1]}")