from collections import deque

N, M, K, X = map(int, input().split(" "))

graph = [[] for _ in range(N + 1)]

for _ in range(M):
    u, v = map(int, input().split(" "))
    graph[u].append(v)

visited = [False] * (N + 1)
result = []

def bfs(v, count):
    queue = deque([(v, count)])
    visited[v] = True

    while len(queue) > 0:
        n = queue.popleft()

        if n[1] == K:
            result.append(n[0])

        for i in graph[n[0]]:
            if not visited[i]:
                queue.append((i, n[1] + 1))
                visited[i] = True
                
bfs(X, 0)

if result: print("\n".join(map(str, sorted(result))))
else: print(-1)