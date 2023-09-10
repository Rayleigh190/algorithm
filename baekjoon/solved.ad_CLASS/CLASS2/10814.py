N = int(input())
members = []
for _ in range(N):
  age, name = map(str, input().split())
  members.append([int(age), name])

members.sort(key = lambda x:x[0])

for member in members:
  print(f"{member[0]} {member[1]}")