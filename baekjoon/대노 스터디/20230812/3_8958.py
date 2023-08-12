T = int(input())
answers = [0]  * T

for index in range(T):
  answers[index] = input()

for index in range(T):
  result = 0 # 최종 점수
  count = 0 # 연속된 O의 수
  for answer in answers[index]:
    if answer == 'X':
      count = 0
    if answer == 'O':
      count += 1
      result += count
  print(result)