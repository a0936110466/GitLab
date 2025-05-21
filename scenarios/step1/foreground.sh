#!/bin/bash

# 建立模擬遠端儲存庫
mkdir -p /root/remote-repo.git
cd /root/remote-repo.git
git init --bare

# 建立本地儲存庫
cd /root
git clone /root/remote-repo.git myrepo
cd myrepo

# 新增一個檔案並 commit
echo "Hello, Git learner!" > README.md
git add README.md
git commit -m "Initial commit"
git push origin master
