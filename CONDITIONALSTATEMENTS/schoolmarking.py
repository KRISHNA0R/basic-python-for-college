marks=int(input("entermarks of sub 1"))

if (marks>=90):
    print("grade of the student is A and marks is:",marks)
elif(marks<=90 and marks>=80):
    print("grade of the student is B and marks is:",marks)
elif(marks<=80 and marks>=70):
    print("grade of the student is C and marks is:",marks)
elif(marks<=70 and marks>=60):
    print("grade of the student is D and marks is:",marks)
else:
    print("the marks is less than 60 so the student is failed")