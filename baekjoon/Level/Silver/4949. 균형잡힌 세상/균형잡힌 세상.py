import sys
read = sys.stdin.readline

while(1):
  line = read()
  if line == ".\n": break
  par = ""
  for char in line:
    if char in "()[]":
      par += char

  while par.find("()") + 1 or par.find("[]") + 1:
    par = par.replace('()', '')
    par = par.replace('[]', '')
  
  if len(par):
    print("no")
  else:
    print("yes")