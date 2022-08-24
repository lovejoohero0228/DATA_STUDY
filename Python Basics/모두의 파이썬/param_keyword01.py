def print_n_times(*values,n=2):
    for i in range(n):
        for value in values:
            print(value)
        print()

print_n_times("김채린은","바보","똥개",n=3)
