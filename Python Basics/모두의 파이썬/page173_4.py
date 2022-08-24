character={
    "name":"기사",
    "level":"12",
    "items":{
        "sword":"불꽃의 검",
        "armor":"풀플레이트",
        },
    "skill":["베기","세게 베기","아주 세게 베기"]
    }

for key in character:
    if type(character[key]) is str:
        print(key,":",character[key])
        
    elif type(character[key]) is dict:
        for key_dict in character[key]:
            print(key_dict,":",character[key][key_dict])
            
    else:
        for key_list in character[key]:
            print(key,":",key_list)

