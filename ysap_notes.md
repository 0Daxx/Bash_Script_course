Directory / Folder

- special type of file

### part 2 :

terminal :

Shell :

REPL : read , execute ,

- bash is always inside a folder

command
pwd : print working directory

### Lesson 3 : Basic file manipulation

- mv les2.txt les3.tt

- command

history

### Lesson 4 :

- file with . infront are hidden files
- ls -a --> . is current directory , .. is parent directory

### Lesson 5

- grep : search file / stream for a pattern

ex1 : 'pattern' pattern

- - ' ' quotes stops bash from interpreting any special characters

- PATTERNS
- ^ caret : match beginning of line
  '^dave' starts with dave
- $ : end of line
  'ly$'
- . : means any character

- grep flags
  -A1 : 1 line after  
  -B1 : 1 line before
  -C1 : 1 line after and before  
  -i : case insensitive
  -o : only print patterns that

#### redirect

- > means overwrite
- > > means append to file , create if file doesnt exists

#### Pipe :

- cat file.txt | grep -i dave
  take data from left and distill it

### Lesson 6 Pager

- Pager : less/more , pages through input

- paginate through data

- keyboard shortcut
- up/down : j/k
- / search
- n : next occ
- shift N prv occ

### Lesson 7

- man man
- man has flags as well

1 Executable programs or shell commands
2 System calls (functions provided by the kernel)
3 Library calls (functions within program li‐
braries)
4 Special files (usually found in /dev)
5 File formats and conventions, e.g. /etc/passwd
6 Games
7 Miscellaneous (including macro packages and con‐
ventions), e.g. man(7), groff(7), man-pages(7)
8 System administration commands (usually only for
root)
9 Kernel routines [Non standard]

man 1 cp will give shell commands of cp 


- man is for external commands/program only 
- help for bash builtin commands like history  
- - help history 

- Q : find if command is external or builtin => type 
- - can also be done using which 
![fig2](Screenshot_20261017_183219.png) 
--- 
--- 

- help -m opens in pseudo man style instead of printing to terminal 

- compgen - general command list

- list all builtin commands 
` compgen -b `
hihih

### Lesson 8 

- file : check file type of a file 
` file file.txt ` 
![file_command](Screenshot_20261017_184221.png)

- tr : translate 
` echo $PATH | tr : '\n' `


### Lesson 9 : Text Editor 

- Q Difference in single quote , double quote , backticks/gravemarks (legacy so use $() )


### Lesson 10 : Scripting 
- series of bash commands 


### Lesson 11 : File permission 
- 3 types of permissions 
` chmod u+x file.sh 
  chmod 755 file.sh 
`
- Shebang (Hash and bang) : following with what program to use 
- `#!/bin/bash`  isnt liked by YSAP 
- `#!/usr/bin/env bash `


- Variable , function , if then , arrays 

- `bash -n ` syntax checker without executing it 
- Check if last command was successful `echo $?` exit/return code of prv command is 0 . 

## Lesson 12 
read command  
- -p flag :  prompt user  
- `read -p 'Enter name' name ` 

###  if then 
- syntax : 
``` 
if .... ; then 
else 
  read -p 
fi 
``` 
### [[ 
### [ 

### [[]]
- ensure 1 argument is provided , -n check if a variable is set or not 
```
[[-n $1]]
```

## Lesson 14 

- by default all variable are global , Always use local keyword infront of variable 
``` 


greet(){

local name=$1 
echo "$name" 
return 0 
}
```

- either the last command of the script exit code OR use return 
- return keyword only works inside function 
### @ sign : expand to be an array of all arguments 
- $@ 


## Lesson 15 
- '' VS  ""  VS no quotes 
- single quote : no variable expansion 
- double quote : variable expansion
- no quotes : dirty hacks , lost space in between texts and weird 

```

if [[ $1 == $2]]; then 
echo "$1 is equal to $2"

```
```

- ! - negate a condition 
- [[-f file.txt ]] checks if file exists 
- TODO : to check if a folder exists 

`` help test  `` give all the flags for 
```
```


## code   
```


#!/usr/bin/bash bash

check(){
  if [[ 1 == 2]];then
    echo 'not equal'
  else 
echo 'equal'
sleep 2 
  fi 
}

check2(){
  while [[-f ysap_notes.md ]]; do 
      echo 'file exists'

  done 
}

check3(){
  if ls ; then 
    echo 'ls worked'
  else 
    echo 'didnt worked'
}
check4(){
  if true;then 
elif false ; then 
elif [[ false ]]; then
    echo 'elif false'
    }
```



- 
- shift v to select , y : yank / copy , u : undo , ctr + r : redo 
- `man test` to check all conditions and flags 
- if statement doesnt need to have [[]] , [[]] doesnt need to be inside if 

- Q : [[]] Vs []
- - [[]] parsing better then [] , prefer [[]] over []

- # chaining : echo 'hi' && echo 'hihi'

## Lesson 16 

```terminal
for thing in {1..5}; do 
    echo "$thing"
done 

# c style for loops 
max=5
for ((i=0; i < max ; i++));do 
   echo "$i"
done 


```

## Lesson 17 

- null command `:` , `help :` says no effect , command does nothing 
-  

- {} expand a range in bash , inclusive 

` read -r  user_input `
- -r : do not allow backslashes to escape any characters
- read by default reads 1 line , unless delimeter is changed 
- 
![echo](bash.png) 





## TASK
-- [zip file to pdf] zip to pdf
- [mp4 to wav ] convert using vlc 
- [clean download folder] clean script 


## Vim/nvim shortcut 
- ctr / : open terminal 

