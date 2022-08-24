def sum_all(start,end, step):
    output=0
    for i in range(start, end+1, step):
        output+=i
    return output

print(sum_all(0,100,10))
    
        
