dictionary={
    "name":"7D 건조 망고",
    "type":"당절임",
    "ingredient":["망고","설탕","메타중아황산나트륨","치자황색소"],
    "origin":"필리핀"
    }

print("name", dictionary["name"])
print("type", dictionary["type"])
print(dictionary["ingredient"])

dictionary["name"]="8D 건조 망고"
print("name", dictionary["name"])

print(dictionary["ingredient"][2])

dictionary["price"]=5000

print(dictionary)

del dictionary["price"]

print(dictionary)
