# 쉘 스크립트 모음집

* send-public-key-file.sh : 로컬에서 원격 서버로 공용키를 전송 & 자동로그인 설정

#### 사용법
```shell
$ send-public-key-file.sh <ipaddress> <port> <passwd>  
$ send-public-key-file.exp 192.168.10.1 22 p@$$w0rd!!
```

* send-public-key-file.exp : 로컬에서 원격서버로 원격 서버로 공용키를 전송 & 자동로그인 설정.

#### 사용법
```shell
$ send-public-key-file.exp <ipaddress> <port> <passwd> <home_directory>
$ send-public-key-file.exp 192.168.10.1 22 p@$$w0rd!! /home/www
```


