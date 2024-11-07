import sys
sys.setrecursionlimit(10 ** 5)

N, M = map(int, input().split(" "))

graph = [[] for _ in range(N + 1)]

for _ in range(M):
    u, v = map(int, input().split(" "))
    graph[u].append(v)

S = int(input())
ss = list(map(int, input().split(" ")))

visited = [False] * (N + 1)

def dfs(v):
    visited[v] = True

    if v in ss:
        return False
    
    if not graph[v]:
        return True

    result = False
    for i in graph[v]:
        if not visited[i]:
            if dfs(i): result = True
    return result

if dfs(1): print("yes")
else: print("Yes")