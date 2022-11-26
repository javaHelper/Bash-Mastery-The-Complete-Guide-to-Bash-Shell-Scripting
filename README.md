# Bash-Mastery-The-Complete-Guide-to-Bash-Shell-Scripting

I've user docker and installed ubuntu image.

```sh
@Prateeks-MacBook-Pro Bash-Mastery-The-Complete-Guide-to-Bash-Shell-Scripting % docker ps 
CONTAINER ID   IMAGE                   COMMAND                  CREATED       STATUS        PORTS                                                                                   NAMES
4da6e0a48600   ubuntu:latest           "bash"                   3 days ago    Up 23 hours                                                                                           jolly_mcnulty
```

# 1. How to build Bash Script

```
./our_first_script.sh 
This is my first script

chmod 744 our_first_script.sh 
la -l
total 3614184
-rwxr--r--@ 1 prateekashtikar  staff         206 Nov 17 20:28 our_first_script.sh


chmod 777 our_first_script.sh
ls -l
total 3614184
-rwxrwxrwx@ 1 prateekashtikar  staff         206 Nov 17 20:28 our_first_script.sh

vi backup_script.   -> File is created and attached in the code

Run the backup+script couple of times

./backup_script.sh
^C
./backup_script.sh
^C

ls -l
ls -l
total 42939296
-rwxrwxrwx@ 1 prateekashtikar  staff          249 Nov 17 20:40 backup_script.sh
-rw-r--r--  1 prateekashtikar  staff  18216253440 Nov 26 09:43 my_backup_26-11-2022_09-42-28.tar
-rw-r--r--  1 prateekashtikar  staff   1903636480 Nov 26 09:43 my_backup_26-11-2022_09-43-19.tar
-rwxrwxrwx@ 1 prateekashtikar  staff          206 Nov 17 20:28 our_first_script.sh
prateekashtikar@Prateeks-MacBook-Pro Bash-Mastery-The-Complete-Guide-to-Bash-Shell-Scripting % 


echo $PATH
/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/prats/confluent-7.0.1/bin:/Users/prats/Documents/Software/apache-maven-3.8.4/bin:/Users/prats/Documents/Software/gradle-7.3.3/bin:/Users/prats/Documents/Software/mongodb-macos-x86_64-5.0.5/bin:/Users/prats/Documents/Software/kafka_2.12-3.3.1/bin:/Library/PostgreSQL/11/bin

mkdir script

vi .zshrc

export PATH=$PATH:$CONFLUENT_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:/Users/prats/Documents/Software/mongodb-macos-x86_64-5.0.5/bin:$KAFKA_HOME/bin:/Library/PostgreSQL/11/bin:/Users/prats/Documents/Prateek/Bash-Mastery-The-Complete-Guide-to-Bash-Shell-Scripting/scripts


echo $PATH
/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/prats/confluent-7.0.1/bin:/Users/prats/Documents/Software/apache-maven-3.8.4/bin:/Users/prats/Documents/Software/gradle-7.3.3/bin:/Users/prats/Documents/Software/mongodb-macos-x86_64-5.0.5/bin:/Users/prats/Documents/Software/kafka_2.12-3.3.1/bin:/Library/PostgreSQL/11/bin:/Users/prats/Documents/Prateek/Bash-Mastery-The-Complete-Guide-to-Bash-Shell-Scripting/scripts
```

# 2. Variable and Shell Expression

```sh
./variable_practice.sh 
Hello Sarah
Hello + Sarah
============
Dear John
The board I would like to thank you for the execellent work that you've done
Keep the good work John
Best Wishes,
Prateel, CEO
```

- Shell Variable

```sh
echo "Hello $USER"
Hello prateekashtikar

echo HOSTTYPE
HOSTTYPE

echo $PS1
%n@%m %1~ %# 

PS1="$: "
$: source ~/.bash_sessions 
```

- Parameter Expansion Trics

```sh
root@4da6e0a48600:/# name=PrAteEk
root@4da6e0a48600:/# echo $name
PrAteEk
root@4da6e0a48600:/# echo ${name}
PrAteEk
root@4da6e0a48600:/# echo ${name,}
prAteEk
root@4da6e0a48600:/# echo ${name,,}
prateek
root@4da6e0a48600:/# echo ${name^}
PrAteEk
root@4da6e0a48600:/# echo ${name^^}
PRATEEK
root@4da6e0a48600:/# echo ${#name}
7
root@4da6e0a48600:/#


root@4da6e0a48600:/# numbers=0123456789
root@4da6e0a48600:/# echo ${numbers:0:7}
0123456
root@4da6e0a48600:/# echo ${numbers:1:5}
12345
root@4da6e0a48600:/# echo ${numbers:3}
3456789
root@4da6e0a48600:/# echo ${numbers: -3,2}
23456789
root@4da6e0a48600:/# echo ${numbers: -3:2}
78
root@4da6e0a48600:/# echo ${numbers: -3}
789
root@4da6e0a48600:/# 
```

- command substitution

```sh
./substitution_script.sh 
HELLO , the right time now is 05:11:41
26-11-2022_05-43-41


root@4da6e0a48600:/Prateek# ./command_substitution_script.sh 
Hello, 
I will now backup your home directory, /root
You're running your script from /Prateek
Therefore, I will save the backup in /Prateek
root@4da6e0a48600:/Prateek# 

```

- Arithmatic Expression

```sh
root@4da6e0a48600:/Prateek# ./arithmatic_script.sh 
6
9
-1
0
20
14
20
16
0
2
root@4da6e0a48600:/Prateek# 
```


- Dealing with decimal numbers

```sh
root@4da6e0a48600:/Prateek# bc
bc 1.07.1
Copyright 1991-1994, 1997, 1998, 2000, 2004, 2006, 2008, 2012-2017 Free Software Foundation, Inc.
This is free software with ABSOLUTELY NO WARRANTY.
For details type `warranty'. 
2+2
4
8*6
48
quit 
root@4da6e0a48600:/Prateek#


root@4da6e0a48600:/Prateek# ./decimal_numbers.sh 
2
2.50
2.5000000000
root@4da6e0a48600:/Prateek# 
```

- brace expansion

```sh
root@4da6e0a48600:/Prateek# ./brace_expansion.sh 
a 19 z barry 42
jan feb mar apr may jun
1 2 3 4 5 6 7 8 9 10
10 9 8 7 6 5 4 3 2 1
a b c d e f g h i j k l m n o p q r s t u v w x y z
1 4 7 10 13 16 19 22 25 28 31 34 37 40 43 46 49 52 55 58 61 64 67 70 73 76 79 82 85 88 91 94 97 100
x1 x2 x3 x4 x5 x6 x7 x8 x9 x10
month0 month1 month2 month3 month4 month5 month6 month7 month8 month9 month10 month11 month12
root@4da6e0a48600:/Prateek# 
```


# 3. How bash processes command line 

```sh
root@4da6e0a48600:/Prateek# ./quoting.sh 
john & jane
root@4da6e0a48600:/Prateek# 
```

- word splitting 

```sh
root@4da6e0a48600:/Prateek# echo "${IFS@Q}"
$' \t\n'
root@4da6e0a48600:/Prateek# 

mkdir word_splitting    
cd word_splitting
numbers="1 2 3 4 5"
touch $numbers
ls
1  2  3  4  5
rm {1..5}
ls



touch "$numbers"
ls
'1 2 3 4 5'

numbers=1,2,3,4,5
touch $numbers
ls
1,2,3,4,5



IFS=","
touch $numbers
ls
1  1,2,3,4,5  2  3  4  5

rm {1..5}
rm 1,2,3,4,5 
```

- globbing 

```sh
touch file.txt
touch file123.txt
touch file{1..3}.txt

touch file{a..c}.txt
touch fileabc.txt
ls -l
total 0
-rw-r--r-- 1 root root 0 Nov 26 06:14 file.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file1.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file123.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file2.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file3.txt
-rw-r--r-- 1 root root 0 Nov 26 06:15 filea.txt
-rw-r--r-- 1 root root 0 Nov 26 06:15 fileb.txt
-rw-r--r-- 1 root root 0 Nov 26 06:15 filec.txt

touch report{1..3}.pdf 
ls
file.txt  file1.txt  file123.txt  file2.txt  file3.txt  filea.txt  fileb.txt  filec.txt  report1.pdf  report2.pdf  report3.pdf

```

- Read Everthing 

```
ls *
file.txt  file1.txt  file123.txt  file2.txt  file3.txt  filea.txt  fileb.txt  filec.txt  report1.pdf  report2.pdf  report3.pdf

ls *.txt
file.txt  file1.txt  file123.txt  file2.txt  file3.txt  filea.txt  fileb.txt  filec.txt

ls *.pdf
report1.pdf  report2.pdf  report3.pdf

ls file*.txt
file.txt  file1.txt  file123.txt  file2.txt  file3.txt  filea.txt  fileb.txt  filec.txt

ls file?.txt
file1.txt  file2.txt  file3.txt  filea.txt  fileb.txt  filec.txt

ls file[ab].txt
filea.txt  fileb.txt

ls file[abc][abc][abc].txt
fileabc.txt

ls file[a-g].txt
filea.txt  fileb.txt  filec.txt


ls file[0-9].txt
file1.txt  file2.txt  file3.txt

```

- Quote Removal

Note: if you want to remove literal quotes

```sh

```

- Redirection

```sh
vi hello.txt -> write Hello word! insight it.
cat < hello.txt 
Hello world!


echo "this is some output" > output.txt
ls
hello.txt  output.txt
cat output.txt 
this is some output
```

# 3. Requesting User inputs

```sh
vi positional_script.sh
#!/bin/bash
echo "My name is $1"
echo "My home directory is $2"
echo "My favourite colour is $3"

chmod 744 positional_script.sh
./positional_script.sh john $HOME blue
My name is john
My home directory is /root
My favourite colour is blue
```

```sh
vi positional_script.sh

#!/bin/bash
echo "My name is $1"
echo "My home directory is $2"
echo "My favourite colour is $3"
echo "The 10th argument is ${10}"
echo "The 11th argument is ${11}"

./positional_script.sh a b c d e f g h i j k 
My name is a
My home directory is b
My favourite colour is c
The 10th argument is j
The 11th argument is k

```

```sh
chmod 755 new_positional_script.sh 

./new_positional_script.sh a b c d
My name is a
My home directory is b
My favourite colour is c
The 10th argument is 
The 11th argument is a1
4
```

```sh
vi special.sh
chmod 744 special.sh 

./special.sh 1 2 3
1 2 3

./special.sh 1 2 3 4
1 2 3 4

./special.sh 1 2 3 4 5
1 2 3 4 5

```

```sh
./special2.sh 1 2 3
-rw-r--r-- 1 root root     0 Nov 26 07:10 3
-rw-r--r-- 1 root root     0 Nov 26 07:10 2
-rw-r--r-- 1 root root     0 Nov 26 07:10 1
-rwxr-xr-x 1 root root    21 Nov 26 07:11 special2.sh

/special2.sh "daily feedback" "monthly report"
root@4da6e0a48600:/Prateek# ls -la
total 20
drwxr-xr-x 4 root root 4096 Nov 26 07:15 .
drwxr-xr-x 1 root root 4096 Nov 22 07:03 ..
-rw-r--r-- 1 root root    0 Nov 26 07:15 daily
-rw-r--r-- 1 root root    0 Nov 26 07:15 feedback
-rw-r--r-- 1 root root    0 Nov 26 07:15 monthly
-rw-r--r-- 1 root root    0 Nov 26 07:15 report
-rwxr-xr-x 1 root root   22 Nov 26 07:14 special2.sh
```

```sh
./special3.sh "daily feedback" "monthly report"

ls -la
total 12
drwxr-xr-x 2 root root 4096 Nov 26 07:22  .
drwxr-xr-x 1 root root 4096 Nov 22 07:03  ..
-rw-r--r-- 1 root root    0 Nov 26 07:22 'daily feedback'
-rw-r--r-- 1 root root    0 Nov 26 07:22 'monthly report'
-rwxr-xr-x 1 root root   24 Nov 26 07:22  special3.sh
```

```sh
chmod +x spcial4.sh 
./spcial4.sh 1 2 3
1,2,3

```

```
root@4da6e0a48600:/Prateek# vi calculator2.sh
root@4da6e0a48600:/Prateek# chmod +x calculator2.sh 
root@4da6e0a48600:/Prateek# ./calculator2.sh 1+2+3
6
root@4da6e0a48600:/Prateek# ./calculator2.sh 1*2*3*4
24
```

```
root@4da6e0a48600:/Prateek# echo $REPLY

root@4da6e0a48600:/Prateek# read      
hello
root@4da6e0a48600:/Prateek# echo $REPLY
hello
root@4da6e0a48600:/Prateek# 
```

```sh
read input1 input2
hello goodbye
root@4da6e0a48600:/Prateek# echo $input1
hello
root@4da6e0a48600:/Prateek# echo $input2
goodbye
```

```sh
./read.sh 
Prateek 33 London
My name is Prateek
I am 33
I am from London


root@4da6e0a48600:/Prateek# vi read2.sh
root@4da6e0a48600:/Prateek# chmod 744 read2.sh 
root@4da6e0a48600:/Prateek# ./read2.sh 
Input your first name : Jane
Input your age : 30
Input the town you are from: Chicago
```

```
./read3.sh 
Input your first name : Input your age : Input the town you are from: 
My name is Jane
I am 22
I am from Pune
root@4da6e0a48600:/Prateek# 
```

```
cat extensions.csv  
John,Doe,0001,1234
```


```
chmod +x select.sh 
./select.sh 
1) mon
2) tue
3) wed
4) thu
5) fri
6) sat
7) sau
#? 3
# The day of the week is wed
```

```sh
./extensions2.sh 
What is your first name?: Prateek
What is your surname/family name?: Dekate
1) headset
2) handheld
What type of phone do you have?: 2
You chose handheld
1) finance
2) sales
3) engineering
4) customer service
What department do you work in?: 3
You chose engineering
What is your extension? (must be 4 digits): 2222
What access code would you like to use when dialling in (must be 4 digits)?: 
root@4da6e0a48600:/Prateek# cat extensions.csv 
Prateek,Dekate,handheld,engineering,2222,1234
```
------

# 4. Logic

```sh
root@4da6e0a48600:/Prateek# echo 123 && echo 456
123
456

root@4da6e0a48600:/Prateek# echo 123 || echo 456
123

root@4da6e0a48600:/Prateek# ls some_directory && echo 456
ls: cannot access 'some_directory': No such file or directory

ls some_directory ||  echo 456
ls: cannot access 'some_directory': No such file or directory
456

```

- Test commands and Test Operators

```
vi conditional_operators.sh
#!/bin/bash

echo "[[ 2 -eq 2 ]]"
[[ 2 -eq 2 ]]; echo $?

echo "-----------------------"

echo "[[ 1 -eq 2 ]]"
[[ 1 -eq 2 ]]; echo $?
echo "--------------"

echo "[[ 1 -ne 2 ]]"
[[ 1 -ne 2 ]]; echo $?
echo "---------------"

echo "[[ 2 -ne 2 ]]"
[[ 2 -ne 2 ]]; echo $?
echo "----------------"

aa=hello
b=goodbye
[[ $a = $b ]] ; echo $?
```


```
./if_combine.sh 
Files do not match
********
```
