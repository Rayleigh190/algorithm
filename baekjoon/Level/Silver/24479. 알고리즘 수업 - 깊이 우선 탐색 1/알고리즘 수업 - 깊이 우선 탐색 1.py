import sys
sys.setrecursionlimit(10 ** 5)

def dfs(v):
    global count
    visited[v] = count
    for i in sorted(graph[v]):
      if visited[i] == 0:
          count += 1
          dfs(i)

N, M, R = map(int, input().split())

graph = [[] for _ in range(N + 1)]

for _ in range(M):
    u, v = map(int, input().split())
    graph[u].append(v)
    graph[v].append(u)

visited = [0] * (N + 1)
count = 1

dfs(R)

print("\n".join(map(str, visited[1:])))