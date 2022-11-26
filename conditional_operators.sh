echo "[[ 1 -ne 2 ]]"
[[ 1 -ne 2 ]]; echo $?
echo "---------------"

echo "[[ 2 -ne 2 ]]"
[[ 2 -ne 2 ]]; echo $?
echo "----------------"

aa=hello
b=goodbye

echo "[[ $a = $b ]]"
[[ $a = $b ]] ; echo $?
          
echo "[[ $a != $b ]]"
[[ $a != $b ]] ; echo $?

echo "[[ -z $c ]]"
[[ -z $c ]] ; echo $? 

c=anything
[[ -z $c ]] ; echo $? 
    
echo "[[ -e today.txt ]]"
[[ -e today.txt ]] ; echo $? 
    
touch today.txt
[[ -e today.txt ]] ; echo $?
