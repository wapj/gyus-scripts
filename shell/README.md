# 쉘 스크립트 모음집

* send-public-key-file.exp : 로컬에서 원격서버로 비밀번호 없이 로그인 하기위해 공용키를 원격 머신으로 보내고 적절한 작업을 함.

#### 사용법
```shell
$ send-public-key-file.exp <ipaddress> <port> <passwd>
$ send-public-key-file.exp 192.168.10.1 22 p@$$w0rd!!
```
