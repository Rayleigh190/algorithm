N = int(input())

score = []
for _ in range(N):
    score.append(int(input()))

count = 0
for i in range(N-2, -1, -1):
    while score[i] >= score[i+1]:
        score[i] -= 1
        count += 1

print(count)