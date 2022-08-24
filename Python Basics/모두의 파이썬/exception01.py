try:
    number_input_a=int(input("정수 입력> "))

    print(number_input_a)
    print(2*number_input_a*3.14)

except Exception as exception:
    print(type(exception))
    print(exception)
