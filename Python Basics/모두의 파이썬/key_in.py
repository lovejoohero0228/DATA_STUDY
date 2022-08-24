dictionary={
    "name":"7D 건조 망고",
    "type":"당절임",
    "origin":"필리핀"

    }

value=dictionary.get("name")
print("값:",value)

if value==None:
    print("존재하지 않는 키에 접근했었습니다")
