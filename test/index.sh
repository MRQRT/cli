#!/bin/bash
echo "-------------------简单的输出"
echo "hello world!"
echo "-------------------全局变量"
ANUMBER=$[1+1]
otherNumber=$((2+2))
echo $ANUMBER
echo $otherNumber
echo "-------------------局部变量(只能写在有作用域的代码中)"
NUANSHOUBAO=nuanshoubao
echo "$NUANSHOUBAO"
echo "-------------------字符串"
ASTRING="what is the day today?"
course=engineering
export course
echo $ASTRING
echo $course
echo '---------------------环境变量'
echo '---$path'
echo $PATH
echo '---$home'
echo $HOME
echo '---$history'
echo $HISTSIZE
echo '---$logname'
echo $LOGNAME
echo '---$hostname'
echo $HOSTNAME
echo '---$shell'
echo $SHELL
echo '---$lang'
echo $LANG
echo '---$language'
echo $LANGUAGE
echo '---$mail'
echo $MAIL
echo '---------------------数组'
ANARRAY=(this is a array)
ANARRAY2=(1 2 3 4 5)
ANARRAY2[5]=6
echo $ANARRAY
echo $ANARRAY[1]
echo $ANARRAY2
echo "------------------if判断"
if [ -z './index' ]
then echo "it is a file";
else echo "it is not a file";
fi
echo "-------------------for循环"
for (( i=0; i<12; i++ ));
do echo "$i"
done
echo "-------------------函数定义"
function jinxin() {
  echo "$*''"
  echo "$#"
  echo "$$"
  echo "$!"
  echo "$@"
  echo "$-"
  echo "$?"
  local prefix="input is"
  if [ -z $1 ]; 
  then echo "no input"
  else
    echo "$prefix $1"
  fi
  return "返回的字符串"
}
echo "-----------------------函数调用"
jinxin abc xiaoing haha
echo "-----------------------函数调用的最后一个"
echo $?
echo "-----------------------"

echo -n "what is ur first name?";
read firstName;
echo -n "what is ur second name?";
read secondName;
echo "$firstName $secondName"