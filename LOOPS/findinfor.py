tuple=(1,3,6,3,6,34,88,8,54,54,54)
idx=0
for i in tuple:
    if(i==34):
        print(i,idx)
        break
    idx+=1        
print("found") 