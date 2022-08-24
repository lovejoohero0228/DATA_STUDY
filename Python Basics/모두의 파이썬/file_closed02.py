try:
    file=open("info.txt","w")

    예외.발생해라()
except Exception as e:

    print(e)
finally:
    file.close()
    
print(file.closed)
