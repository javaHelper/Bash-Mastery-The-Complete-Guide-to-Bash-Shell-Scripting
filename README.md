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

root@4da6e0a48600:/Prateek# mkdir word_splitting    
root@4da6e0a48600:/Prateek# cd word_splitting
root@4da6e0a48600:/Prateek/word_splitting# numbers="1 2 3 4 5"
root@4da6e0a48600:/Prateek/word_splitting# touch $numbers
root@4da6e0a48600:/Prateek/word_splitting# ls
1  2  3  4  5
root@4da6e0a48600:/Prateek/word_splitting# rm {1..5}
root@4da6e0a48600:/Prateek/word_splitting# ls
root@4da6e0a48600:/Prateek/word_splitting# 


root@4da6e0a48600:/Prateek/word_splitting# touch "$numbers"
root@4da6e0a48600:/Prateek/word_splitting# ls
'1 2 3 4 5'
root@4da6e0a48600:/Prateek/word_splitting# 



root@4da6e0a48600:/Prateek/word_splitting# numbers=1,2,3,4,5
root@4da6e0a48600:/Prateek/word_splitting# touch $numbers
root@4da6e0a48600:/Prateek/word_splitting# ls
1,2,3,4,5
root@4da6e0a48600:/Prateek/word_splitting#


root@4da6e0a48600:/Prateek/word_splitting# IFS=","
root@4da6e0a48600:/Prateek/word_splitting# touch $numbers
root@4da6e0a48600:/Prateek/word_splitting# ls
1  1,2,3,4,5  2  3  4  5
root@4da6e0a48600:/Prateek/word_splitting#
root@4da6e0a48600:/Prateek/word_splitting# rm {1..5}
root@4da6e0a48600:/Prateek/word_splitting# rm 1,2,3,4,5 
```

- globbing 

```sh
root@4da6e0a48600:/Prateek/word_splitting# ls           
root@4da6e0a48600:/Prateek/word_splitting# touch file.txt
root@4da6e0a48600:/Prateek/word_splitting# touch file123.txt
root@4da6e0a48600:/Prateek/word_splitting# touch file{1..3}.txt
root@4da6e0a48600:/Prateek/word_splitting# ls -l
total 0
-rw-r--r-- 1 root root 0 Nov 26 06:14 file.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file1.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file123.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file2.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file3.txt
root@4da6e0a48600:/Prateek/word_splitting# touch file{a..c}.txt
root@4da6e0a48600:/Prateek/word_splitting# ls -l
total 0
-rw-r--r-- 1 root root 0 Nov 26 06:14 file.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file1.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file123.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file2.txt
-rw-r--r-- 1 root root 0 Nov 26 06:14 file3.txt
-rw-r--r-- 1 root root 0 Nov 26 06:15 filea.txt
-rw-r--r-- 1 root root 0 Nov 26 06:15 fileb.txt
-rw-r--r-- 1 root root 0 Nov 26 06:15 filec.txt
root@4da6e0a48600:/Prateek/word_splitting# 
root@4da6e0a48600:/Prateek/word_splitting# touch report{1..3}.pdf 
root@4da6e0a48600:/Prateek/word_splitting# ls
file.txt  file1.txt  file123.txt  file2.txt  file3.txt  filea.txt  fileb.txt  filec.txt  report1.pdf  report2.pdf  report3.pdf
root@4da6e0a48600:/Prateek/word_splitting# 
```
