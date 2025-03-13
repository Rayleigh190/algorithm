import sys
read = sys.stdin.readline

N = int(read())
stack = []

for _ in range(N):
  command = read().split()
  cm = command[0]
  if cm == "push":
    stack.append(command[1])
  elif cm == "pop":
    print(-1) if len(stack) == 0 else print(stack.pop())
  elif cm == "size":
    print(len(stack))
  elif cm == "empty":
    print(1) if len(stack) == 0 else print(0)
  elif cm == "top":
    print(-1) if len(stack) == 0 else print(stack[-1])
