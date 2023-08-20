S = input()
alphabets = [chr(i) for i in range(ord('a'), ord('z')+1)]

for a in alphabets:
  for i, s in enumerate(S):
    if s == a:
      print(i, end=' ')
      break
    if i == len(S)-1:
      print('-1', end=' ')