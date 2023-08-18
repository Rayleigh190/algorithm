nums = list(map(int, input().split(' ')))

for i, num in enumerate(nums):
  nums[i] = pow(num, 2)

print(sum(nums) % 10)