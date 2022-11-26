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
