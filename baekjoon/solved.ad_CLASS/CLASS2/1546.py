N = int(input())
scores = list(map(int, input().split()))
M = max(scores)

scores2 = [score/M*100 for score in scores]
mean = sum(scores2)/len(scores2)
print(mean)