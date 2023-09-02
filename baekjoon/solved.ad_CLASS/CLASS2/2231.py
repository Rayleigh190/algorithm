N = int(input())

for i in range(1, N+1):
  sum_num = sum(map(int, str(i))) # 각 자리 수의 합
  disassemble = i + sum_num # 분해합 = 생성자 + 각자리수의합
  if disassemble == N:
    print(i)
    break
  if i == N:
    print(0)
    break