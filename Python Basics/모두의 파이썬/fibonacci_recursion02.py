def fibonacci(n):
    counter=0
    print("fibonacci({})를 구합니다.".format(n))
   
    counter+=1

    if n==1:
        return 1
    elif n==2:
        return 1
    else:
        return fibonacci(n-1)+fibonacci(n-2)
fibonacci(35)
print("--")
print("fibonacci(35) 계산에 활용된 덧셈의 횟수는 {}번입니다.".format(counter))
