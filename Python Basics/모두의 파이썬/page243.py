def flatten(data):
    output=[]
    for element in data:
        if type(element)==list:
            output +=flatten(element)
        else:
            output.append(element)
    return  output

example=[[1,2,3],[4,[5,6]],7,[8,9]]
print(flatten(example))
