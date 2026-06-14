#palindrome
lista=[1,2,1]

copylista=lista.copy()
copylista.reverse()

if (copylista==lista):
    print("its a plaindrome")
else:
    print("its not")