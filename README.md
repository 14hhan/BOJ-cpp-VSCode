# BOJ-cpp-VSCode
VSCode를 사용하여 C++로 BOJ문제 풀기

## 시작하기 전
설치되어 있어야 하는 것들
- g++
- lldb
- VSCode extensions
  - `ms-vscode.cpptools`
  - `vadimcn.vscode-lldb`

## 시작하기
1. 터미널에 아래와 같이 입력
    ```zsh
    > ./boj-cpp.sh
    ```
2. 아래와 같이 나타나면 BOJ 문제 번호 입력
    ```zsh
    > boj number?
    ```
3. boj-cpp 폴더 내 아래와 같은 내용의 `<BOJ_NUMBER>/<BOJ_NUMBER>.cpp` 생성
    ```cpp
    //boj <BOJ_NUMBER>

    #include <iostream>
    using namespace std;

    int main(){
        
        return 0;
    }
    ```

## Build
`command + shift + B` (MacOS)

## Debug
1. `.vscode/task.json`에서 아래 부분 주석처리
    ```json
    // execute .out file
    "&&",
    "${fileDirname}/${fileBasenameNoExtension}.out",
    ```
2. `command + shift + D` (MacOS)

## input file 설정하기
stdin이 아닌 파일을 통해 input을 받는 경우
1. `.vscode/task.json`에서 아래 부분 주석처리 해제
    ```json
    // file input
    // "<",
    // "${fileDirname}/sample_input.txt",
    ```
2. `"${fileDirname}/sample_input.txt",` 부분의 파일명과 경로를 상황에 맞게 변경

## output file 설정하기
stdout이 아닌 파일을 통해 output을 받는 경우
1. `.vscode/task.json`에서 아래 부분 주석처리 해제
    ```json
    // file output
    // ">",
    // "${fileDirname}/sample_output.txt",
    ```
2. `"${fileDirname}/sample_output.txt",` 부분의 파일명과 경로를 상황에 맞게 변경

## 언어 standard 설정하기
`.vscode/c_cpp_properties.json`에서 아래 부분 상황에 맞게 변경
```json
"cStandard": "c11",
"cppStandard": "c++17",
```
