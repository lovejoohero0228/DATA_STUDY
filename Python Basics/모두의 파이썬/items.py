example_dictionary={
    "키A":"값A",
    "키B":"값B",
    "키C":"값C",
}


print("items():", example_dictionary.items())
print()

for key,element in example_dictionary.items():
    print("dictionary[{}]={}".format(key,element))
