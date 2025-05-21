＃ 使用bash執行腳本
`#!/bin/bash`{{exec interrupt}}

# Step 1: 建立模擬用的遠端儲存庫
`mkdir -p /root/remote-repo.git`{{exec interrupt}}
`cd /root/remote-repo.git`{{exec interrupt}}
`git init --bare --initial-branch=main`{{exec interrupt}}

# Step 2: 建立本地儲存庫並連接遠端
`cd /root`{{exec interrupt}}
`git clone /root/remote-repo.git myrepo`{{exec interrupt}}
`cd myrepo`{{exec interrupt}}

# Step 3: 建立初始檔案並提交
`echo "Hello Git learners!" > info.txt`{{exec interrupt}}
`git add info.txt`{{exec interrupt}}
`git commit -m "Initial commit"`{{exec interrupt}}
`git push -u origin main`{{exec interrupt}}

