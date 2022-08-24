import os

output=os.listdir(".")
print("os.lsitdir():",output)
print()

for path in output:
    if os.path.isdir(path):
        print("폴더:",path)
    else:
        print("파일:", path)
        
      
