N = int(input())
words = [input() for i in range(N)]

words = list(set(words))
words.sort()
words.sort(key=len)

for w in words:
  print(w)