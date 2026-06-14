def sum(n):
    if (n==0):
        return 0
    return sum(n-1)+n

val=sum(5)
print(val)