A = int(input())
B = int(input())
C = int(input())

result = str(A * B * C)

for num in range(10):
  count = 0
  for index in result:
    if str(num) == index:
      count += 1
  print(count)