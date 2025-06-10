使用 bash 執行腳本
`#!/bin/bash`{{exec interrupt}}


💡 設定 Git 的使用者資訊，包含名稱與 email，這些資訊會出現在你的每一次 commit 紀錄中。

```bash
# ➤ 設定使用者名稱
git config --global user.name "你的名字"

# ➤ 設定使用者信箱
git config --global user.email "你的信箱"



💡 請依序輸入以下三行指令來建立模擬遠端儲存庫(類似建立一個github 環境)：

```bash
# ➤ 建立資料夾
mkdir -p /root/remote-repo.git

# ➤ 進入資料夾
cd /root/remote-repo.git

# ➤ 初始化為 bare repository，「儲存庫」＝沒有檔案內容，只有 Git 版本記錄 :
git init --bare --initial-branch=main


💡 建立本地儲存庫並連接遠端

# ➤ 回到根目錄
cd /root

# ➤ 從遠端 clone 出一份本地儲存庫
git clone /root/remote-repo.git myrepo

# ➤ 進入本地儲存庫目錄
cd myrepo


💡 建立初始檔案並提交
# ➤ 建立一個新檔案
echo "Hello Git learners!" > info.txt

# ➤ 將檔案加入 Git 管理
git add info.txt

# ➤ 提交檔案並加上說明
git commit -m "Initial commit"

# ➤ 將變更推送到遠端儲存庫
git push -u origin main

