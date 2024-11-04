from collections import deque

n = int(input())
t1, t2 = map(int, input().split(" "))
m = int(input())

graph = [[] for i in range(n + 1)]

for _ in range(m):
    u, v = map(int, input().split(" "))
    graph[u].append(v)
    graph[v].append(u)

visited = [False] * (n + 1)

def bfs(v):
    queue = deque([(v, 0)])
    visited[v] = True

    while len(queue) > 0:
        n = queue.popleft()
        node = n[0]
        depth = n[1]

        if node == t2:
            return depth

        for i in graph[node]:
            if not visited[i]:
                queue.append((i, depth + 1))
                visited[i] = True
    return -1

print(bfs(t1))