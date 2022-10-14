# skill name, points req., activates, effect

import csv, json

file_csv = open("skills.csv")

data_csv = csv.reader(file_csv)

list_csv = list(data_csv)

print(list_csv)

def to_file_name(string):
    string = string.lower()
    string = string.strip()
    string = string.replace(" ", "_")
    string = string.replace("<", "")
    string = string.replace(">", "")
    string = string.replace("k.o.", "knockout")
    string = string.replace(".", "_dot_")
    string = string.replace("[", "_")
    string = string.replace("]", "_")
    string = string.replace("%", "_percent")
    string = string.replace("__", "_")
    string = string.replace("__", "_")
    string = string.strip("_")

    return string

for skill in list_csv:
    file_name = to_file_name(skill[2])
    dictionary = dict()
    dictionary["skill"] = skill[0]
    dictionary["points_required"] = skill[1]
    dictionary["activated_skill"] = skill[2]
    dictionary["effect"] = skill[3]

    with open(file_name + ".json", "w") as outfile:
        json.dump(dictionary, outfile)
