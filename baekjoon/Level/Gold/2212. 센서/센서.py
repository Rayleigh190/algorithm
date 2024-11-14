N = int(input())
K = int(input())
coordis = sorted(list(set(map(int, input().split(" ")))))

if K >= N :
    print(0)
else:
    gaps = []
    for i in range(len(coordis)-1):
        gaps.append(abs(coordis[i] - coordis[i+1]))
    print(sum(sorted(gaps, reverse=True)[K-1:]))