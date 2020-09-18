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
터미널에 아래와 같이 입력하면 boj-cpp 폴더 안에 입력한 번호를 이름으로 하는 폴더와 cpp 파일을 생성함
```zsh
> ./boj-cpp.sh
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
