S = input()

score = 0
count = 0
for s in S:
  if s == 'A':
    score += 4.0
    count += 1
  if s == 'B':
    score += 3.0
    count += 1
  if s == 'C':
    score += 2.0
    count += 1
  if s == 'D':
    score += 1.0
    count += 1
  if s == 'F':
    score += 0.0
    count += 1
  if s == '+':
    score += 0.5

print(score/count)