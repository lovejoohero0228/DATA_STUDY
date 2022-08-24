def call_10_times(fu):
    for i in range(10):
        fu()

def print_hello():
    print("안녕하세요")

call_10_times(print_hello)
