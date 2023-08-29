N = int(input())

house_num = 1
count = 1

while N > house_num:
  house_num += count * 6
  count += 1

print(count)