H, M = map(int, input().split(' '))

if M < 45 and H != 0: print(f"{H - 1} {M + 60 - 45}")
elif M < 45 and H == 0: print(f"{23} {M + 60 - 45}")
else: print(f"{H} {M - 45}")