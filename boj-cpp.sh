#!/bin/sh
cd ./boj-cpp
echo "boj number?"
read number
mkdir ./$number
cd ./$number
touch $number.cpp
cat << EOT >> $number.cpp
//boj $number

#include <iostream>
using namespace std;

int main(){
    
    return 0;
}
EOT