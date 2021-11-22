class Solution:
    def reorderLogFiles(self, logs: List[str]) -> List[str]:
        letter = []
        digit = []
        for log in logs:
            if log[-1].isdigit():
                digit.append(log)
            else:
                letter.append(log)
        
        letter = sorted(letter, key = lambda x: (x.split()[1:],x.split()[0]))
        
        return letter + digit