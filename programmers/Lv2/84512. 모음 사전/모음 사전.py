def solution(word):
    charList = ["A", "E", "I", "O", "U"]
    count = 0
    
    def bt(result):
        nonlocal count
        count += 1
        
        if result == word:
            return True
        if len(result) == 5:
            return False
        
        for char in charList:
            if bt(result + char): 
                return True
    
    for char in charList:
        if bt(char):
            return count