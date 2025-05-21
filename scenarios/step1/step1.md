＃ 使用bash執行腳本
`#!/bin/bash`{{exec interrupt}}

# 設定 Git 使用者資訊
`git config --global user.name "Lon"`{{exec}}
`git config --global user.email "lon@example.com"`{{exec}}

# Step 1: 建立模擬用的遠端儲存庫
`mkdir -p /root/remote-repo.git`{{exec}}

`cd /root/remote-repo.git`{{exec}}

`git init --bare --initial-branch=main`{{exec}}

# Step 2: 建立本地儲存庫並連接遠端
`cd /root`{{exec interrupt}}

`git clone /root/remote-repo.git myrepo`{{exec}}

`cd myrepo`{{exec interrupt}}

# Step 3: 建立初始檔案並提交
`echo "Hello Git learners!" > info.txt`{{exec}}

`git add info.txt`{{exec interrupt}}

`git commit -m "Initial commit"`{{exec}}

`git push -u origin main`{{exec}}

