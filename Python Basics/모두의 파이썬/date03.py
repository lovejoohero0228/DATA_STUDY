import datetime

now=datetime.datetime.now()

if 3<= now.month<=5:
    print("지금은 {}월이므로 봄입니다!".format(now.month))

if 6<= now.month<=8:
    print("지금은 {}월이므로 봄입니다!".format(now.month))

if 9<= now.month<=11:
    print("지금은 {}월이므로 봄입니다!".format(now.month))

if now.month==12 or 1<= now.month<=2:
    print("지금은 {}월이므로 봄입니다!".format(now.month))

