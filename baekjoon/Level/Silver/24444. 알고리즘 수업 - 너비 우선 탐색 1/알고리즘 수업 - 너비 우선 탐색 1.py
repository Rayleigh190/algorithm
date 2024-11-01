from collections import deque

def bfs(v):
    global count
    queue = deque([v])
    visited[v] = count
    
    while queue:
        n = queue.popleft()
        for i in sorted(graph[n]):
            if visited[i] == 0:
                queue.append(i)
                count += 1
                visited[i] = count

N, M, R = map(int, input().split())

graph = [[] for _ in range(N + 1)]

for _ in range(M):
    u, v = map(int, input().split())
    graph[u].append(v)
    graph[v].append(u)

visited = [0] * (N + 1)
count = 1

bfs(R)

print("\n".join(map(str, visited[1:])))