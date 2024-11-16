def solution(answers):
    pick = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    result = [[1, 0], [2, 0], [3, 0]]
    for i, answer in enumerate(answers):
        if answer == pick[0][i%5]: result[0][1] += 1
        if answer == pick[1][i%8]: result[1][1] += 1
        if answer == pick[2][i%10]: result[2][1] += 1

    return list(map(lambda item: item[0], list(filter(lambda item: item[1] == max(result, key=lambda item: item[1])[1], result))))