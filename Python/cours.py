# My first python script
name = input("What is your name ? ")
birth_year = input("Enter your birth year : ")
print(name)
print(birth_year)

if name != "frank":
    print("bonjour " + name)
else:
    age = 2023 - int(birth_year)
    print(age)