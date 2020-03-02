
cities_file = open('./cities', 'r')
cities = cities_file.readlines()
cities_file.close()

with open('./dict-cities', 'a') as output:
    output.write('cities_dict = {\n')
    for x in cities:
        temp = x.strip('\n').replace(' ', '').split(':')
        output.write(f'\"{temp[1]}\": \"{temp[0]}\",')
    output.write('}')
