def test():
    print("함수가 호출되었습니다.")
    yield "test"

print("A지점통과")
test()

print("B지점통과")
test()
print(test())
