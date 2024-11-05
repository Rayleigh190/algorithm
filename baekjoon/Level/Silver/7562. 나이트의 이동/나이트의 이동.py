from collections import deque

T = int(input())

for _ in range(T):
    length = int(input())
    startX, startY = map(int, input().split(" "))
    endX, endY = map(int, input().split(" "))

    graph = [[False] * length for i in range(length)]

    dx = [-2, -1, 1, 2,  2,  1, -1, -2]
    dy = [ 1,  2, 2, 1, -1, -2, -2, -1]

    def bfs(x, y):
        queue = deque([(x, y, 0)])
        graph[x][y] = True

        while len(queue) > 0:
            n = queue.popleft()
            x, y, count = n[0], n[1], n[2]

            if x == endX and y == endY:
                print(count)
                break

            for i in range(8):
                nx = x + dx[i]
                ny = y + dy[i]

                if nx < 0 or nx > length - 1 or ny < 0 or ny > length - 1:
                    continue
                
                if not graph[nx][ny]:
                    queue.append((nx, ny, count + 1))
                    graph[nx][ny] = True

    bfs(startX, startY)