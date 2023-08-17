s = input().upper()
dic = {}

for i in s:
  if i not in dic:
    dic.update({i: 0})
  else:
    dic[i] += 1

result = [k for k, v in dic.items() if max(dic.values()) == v]

if len(result) > 1: print('?')
else: print(result[0])