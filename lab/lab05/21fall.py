#21 fall
def factors_list(n):
    sum1 = []
    i = 1
    while i < n:
        if n % i == 0:
            sum1 += [i]
        i = i + 1
    return sum1

def flatten(s):
    if not s:
        return []
    elif type(s[0]) == list:
        return flatten(s[0])+ flatten(s[1:])
    else:
        return [s[0]] + flatten(s[1:])
        
        
