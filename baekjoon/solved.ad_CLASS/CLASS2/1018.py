N, M = map(int, input().split())

board = []
counts = []

for i in range(N):
  board.append(input())

for i in range(N-7):
  for j in range(M-7):
    w_start = 0
    b_start  = 0

    for x in range(i, i+8):
      for y in range(j, j+8):
        if (x+y)%2 == 0:
          if board[x][y] != 'W':
            w_start += 1
          if board[x][y] != 'B':
            b_start += 1
        else: 
          if board[x][y] != 'W':
            b_start += 1
          if board[x][y] != 'B':
            w_start += 1

    counts.append(w_start)
    counts.append(b_start)

print(min(counts))