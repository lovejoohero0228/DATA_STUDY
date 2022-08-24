try:
    number_input=int(input("정수 입력> "))

    print("원의 둘레:",2*3.14*number_input)

except:
    print("정수를 입력해달라고 했잖아요?!")

else:
    print("예외가 발생하지 않았습니다")
finally:
    print("일단 어떻게든 프로그램이 끝났습니다.")
    
