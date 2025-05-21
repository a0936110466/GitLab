# 使用 bash 執行腳本

`#!/bin/bash`{{exec interrupt}}

# Step 1: 設定 Git 使用者資訊

### 設定 Git 的使用者名稱與 email，這是 commit 時會記錄的作者資訊。

`git config --global user.name "Lon"`{{exec}}

`git config --global user.email "lon@example.com"`{{exec}}

# Step 2: 建立模擬用的遠端儲存庫(類似建立一個ㄔ github 環境)

建立一個空資料夾當作遠端 repo
`mkdir -p /root/remote-repo.git`{{exec}}

`cd /root/remote-repo.git`{{exec}}
始化為「儲存庫」＝沒有檔案內容，只有 Git 版本記錄
`git init --bare --initial-branch=main`{{exec}}

# Step 3: 建立本地儲存庫並連接遠端

`cd /root`{{exec interrupt}}

`git clone /root/remote-repo.git myrepo`{{exec}}

`cd myrepo`{{exec interrupt}}

# Step 4: 建立初始檔案並提交

`echo "Hello Git learners!" > info.txt`{{exec}}

`git add info.txt`{{exec interrupt}}

`git commit -m "Initial commit"`{{exec}}

`git push -u origin main`{{exec}}
