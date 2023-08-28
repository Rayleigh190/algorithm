num = [0] * 9

for i in range(9):
  num[i] = int(input())

max_num = max(num)
print(max_num)
print(num.index(max_num)+1)