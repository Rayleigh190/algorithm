T = int(input())
S = [input() for _ in range(T)]

for ss in S:
  left_count = 0
  right_count = 0
  for s in ss:
    if s == '(':
      left_count += 1
    else:
      right_count += 1
      if right_count > left_count:
        break
  if (left_count-right_count) == 0:
    print("YES")
  else:
    print("NO")