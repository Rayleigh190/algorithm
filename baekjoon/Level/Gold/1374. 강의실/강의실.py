import heapq

N = int(input())

times = []
for _ in range(N):
    num, start, end = map(int, input().split(" "))
    times.append([start, end])

times.sort()
rooms = [times[0][1]]
for time in times[1:]:
    if time[0] >= rooms[0]:
        heapq.heappop(rooms)
    heapq.heappush(rooms, time[1])

print(len(rooms))