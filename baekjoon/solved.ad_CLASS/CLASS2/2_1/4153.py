nums = []

while True:
  inputs = list(map(int, input().split()))
  nums.append(inputs)
  if inputs[0] == 0:
    break

for num in nums[:len(nums)-1]:
  num_list = sorted(num)
  if num_list[0]**2 + num_list[1]**2 == num_list[2]**2:
    print("right")
  else:
    print("wrong")