power=lambda x: x*x
under_3=lambda x: x<3

list_input_a=[1,2,3,4,5]


output_a=map(power,list_input_a)

print(list(output_a))

output_b=filter(under_3,list_input_a)
print(list(output_b))
