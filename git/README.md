git 사용법
==========

아래 링크에 있는건데 자주 쓰는거라 안까먹을려고 기록

http://rogerdudler.github.io/git-guide/index.ko.html

```shell
# 새로운 저장소 만들기
git init

# 저장소 받아오기
git clone /로컬/저장소/경로
git clone 사용자명@호스트:/원격/저장소/경로

# 변경된 파일 추가
git add <파일 이름>
git add *

# 작업한 내용 확정
git commit -m "이번 버젼에 대한 설명"

# 변경된 내용 원격 저장소에 밀어넣기
git push origin master

# 브랜치
#              feature_x 
#            ------------- 
#          /               \
#        /      master       \
# ------B---------------------M------
# B : branch
# M : merge

# "feature_x" 브랜치 만들기
git checkout -b feature_x 

# master로 돌아오기
git checkout master

# 브랜치 삭제
git branch -d feature_x

# 새로만든 브랜치 원격 저장소로 전송
git push origin <가지이름>


# 갱신과 병합
git pull

# 다른 가지에 있는거 병합
git merge <가지이름>


# 충돌나면 git이 알려주는 파일의 충돌 부분을 
# 직접수정해서 병합가능하게 만들기
# 충돌 해결후

git add <파일 이름>

# 내용 병합하기 전에 비교해보기
git diff <원래 가지> <비교 대상 가지>

# 태깅
git tag 1.0.0 1b2c3d4e5f

# 식별자 확인하기
git log

# 실수한경우 로컬 내용 되돌리기
# 로컬의 변경내용을 변경전 상태로 돌려놓음
# 인덱스에 추가된 변경내용과 새로 생성한 파일이 그대로 남음
git checkout -- <파일명>

# 로컬에 있는 모든 내용을 돌리려면
git fetch origin
git reset --hard origin/master

# git의 내장 GUI
gitk

# 콘솔에서 git output을 컬러로 출력
git config color.ui true

# 로그에서 확정본 1개를 딱 한줄로 표시하기
git config format.pretty oneline

# 파일 추가시 대화식으로 추가하기
git add -i

# 원격 저장소의 URL을 변경하고 싶은 경우 
git remote set-url origin <URL>

# .gitignore 설정하기
# .gitignore 파일을 설정하기 전에 만든 파일이 있는경우 캐시를 삭제해줘야함.
# 캐시 삭제

git rm --cached .

# 전역 .gitignore (Global .gitignore)
# ~/.gitignore_global 등의 적당한 파일을 하나 만듬
# 아래 명령을 실행하면 위에서 만든파일을 전역 .gitignore파일로 인식함
git config --global core.excludesfile ~/.gitignore_global

```

### .gitignore on github

https://help.github.com/articles/ignoring-files

### gitignore 예제 파일들 - 거의 다있는 듯

https://github.com/github/gitignore

### 전역 .gitignore파일의 예시 (from github)
```
# Compiled source #
###################
*.com
*.class
*.dll
*.exe
*.o
*.so

# Packages #
############
# it's better to unpack these files and commit the raw source
# git has its own built in compression methods
*.7z
*.dmg
*.gz
*.iso
*.jar
*.rar
*.tar
*.zip

# Logs and databases #
######################
*.log
*.sql
*.sqlite

# OS generated files #
######################
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
```
