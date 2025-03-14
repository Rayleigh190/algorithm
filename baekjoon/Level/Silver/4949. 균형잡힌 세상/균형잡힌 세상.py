import sys
read = sys.stdin.readline

while(1):
  line = read()
  if line == ".\n": break
  open_stack = []
  result = "yes"

  for char in line:
    if char == "(" or char == "[":
      open_stack.append(char)
    elif char == ")" or char == "]":
      if len(open_stack) == 0:
        result = "no"
        break
      if char == ")":
        if open_stack[-1] != "(":
          result = "no"
          break
      if char == "]":
        if open_stack[-1] != "[":
          result = "no"
          break
      open_stack.pop()

  if len(open_stack) != 0:
    result = "no"
  print(result)
  