T = int(input())

for _ in range(T):
    N = int(input())
    alphabet = input().split(" ")
    result = []
    for a in alphabet:
        if len(result) == 0:
            result.append(a)
            continue
        if result[0] >= a:
            result.insert(0, a)
        else:
            result.append(a)
    print("".join(result))