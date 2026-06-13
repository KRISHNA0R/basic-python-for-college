letter = '''
Dear <|Name|>,
You are selected!
<|Date|>
'''
a= input("Enter your name: ")
date= input("Enter date: ")
print(letter.replace('<|Name|>', a).replace('<|Date|>', date))