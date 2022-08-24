limit=1000
i=1
sum_value=0
while sum_value<1000:
    i+=1
    sum_value+=i
    
    
print("{}를 더할 때 {}를 넘으며 그때의 값은 {}입니다".format(i-1,limit,sum_value))
