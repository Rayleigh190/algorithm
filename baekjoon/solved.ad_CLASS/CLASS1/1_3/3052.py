nums = [0] * 10
for i in range(10):
  nums[i] = int(input())

nums = [num%42 for num in nums]

count = []
for num in nums:
  if num in count:
    pass
  else:
    count.append(num)

print(len(count))