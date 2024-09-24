def solution(s):
    left_count = 0
    right_count = 0
    for c in s:
        if c == "(":
            left_count += 1
        elif c == ")":
            right_count += 1
        if right_count > left_count: return False

    return left_count == right_count