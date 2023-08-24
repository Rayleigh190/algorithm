while True:
  num = list(input())
  re_num = num.copy()
  re_num.reverse()
  if num[0] == '0':
    break
  if num == re_num:
    print("yes")
  else:
    print("no")