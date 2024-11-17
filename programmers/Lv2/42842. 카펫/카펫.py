def solution(brown, yellow):
    height = 3
    width = (brown+yellow)/height
    while True:
        if (width-2) * (height-2) == yellow: break
        height += 1
        width = (brown+yellow)/height
    
    return [width, height]