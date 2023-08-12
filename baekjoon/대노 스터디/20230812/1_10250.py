T = int(input())
H = [0] * T
W = [0] * T
N = [0] * T

for index in range(T):
  # 호텔의 층수, 각 층의 방 수, 몇 번째 손님
  H[index], W[index], N[index] = map(int, input().split(' ')) 

for index in range(T):
  count = 1
  for i in range(W[index]):
    for j in range(H[index]):
      if count == N[index]:
        room = str(j+1) + str(i+1).zfill(2)
        print(room)
        count += 1
      count += 1