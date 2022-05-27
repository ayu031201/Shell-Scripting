#! /bin/bash  
# called the shebang 

echo "Hemlo"

HUEHUEHUE="noob"
echo "im $HUEHUEHUE"
read -p " hemlo noob " HUEHUEHUE
echo $HUEHUEHUE

# Simple IF - Else  --------------------------------------------------------------------------------------------------

# if [ $HUEHUEHUE == "noob" ]  # [] closing brackets
# then echo huenoob            # then instead of brackets
# fi                           # fi as the end 

# if [ $HUEHUEHUE == "LOL" ]   # Spaces matters the most here.
# then echo huelol
# else
# echo huenooblol
# fi

# if [ $HUEHUEHUE == "lolnoob" ] # MIND THE SPACES
# then echo idfc
# elif [ $HUEHUEHUE == "lolxd" ] # elif in place of else if.
# then echo idf
# else
# echo kuch nhi
# fi                             # fi in the end to end the loop.

# Comparators ------------------------------------------------------------------------------------------

num1=75  # -gt -> greater than , -ge -> greater equal, -le -> less equal, -lt -> less than, -ne -> not equal, -eq equal
num2=70

# if [ "$num1" -gt "$num2" ]
# then echo num1 is bigger
# else echo num2 is bigger
# fi

# Checking for file existings ----------------------------------------------------------------------------------------------------

# CHECK="noob.txt"  # -f -> file exists , -d -> directory exists , -e -> exists or not anything , -r -> readable or not , -w -> writable or not 
#                   # -s -> file has some size and is not empty
# if [ -x "$CHECK" ]
# then echo it is a file
# else echo no file 
# fi 

# CHANGING FILE NAMES ---------------------------------------------------------------------------------------

# CHECK=$(ls *.txt)    # lists all of the .txt extension files.
# for FILE in $CHECK
# do mv "$FILE" "${FILE%.*}.cpp"  # takes only name without extension
# done

# CHECK=$(ls *.cpp)    # Files that ends with .cpp
# for FILE in $CHECK
# do mv -- "$FILE" "$(basename -- "$FILE" .cpp).txt"  # Uses basename to convert the filename. { -- symbol in mv command }.
# done

NOOB=$(ls)           # All files that are listed
for FILE in $NOOB
do echo "${FILE%.*}" # Extracing the file names from them
done

NOOB=$(ls *.txt)
for FILE in $NOOB
do 
H="${FILE%.*}"        # Extracting the names 
mv "$FILE" "$H.cpp"  # Changing the names by extracting the initial file names to another extenstion.
                      #  "${FILE%.*}" for the file name , "${File##*.}" for extension.
done

# Loops ----------------------------------------------------------------------------------------------------------

# for FILE in $NAME  # FOR loop
# do echo $FILE
# done 

# A=1
# while [ $A -le 5 ]  # While loop 
# do echo $A
# ((A++))
# done

# Functions ------------------------------------------------------------------------------------------------------

# function ik(){  # normal function 
#     echo "ikik"
# }
# ik

# function ik2(){  # function with parameters
#     echo $1 " and " $2
# }

# ik2 "noob" "number 1"

# writing something in a file -----------------------------------------------------------------------------------------------------------

echo "ptanhi" >> "1.txt2" # right shift to write a thing in a file

cat 1.txt2

