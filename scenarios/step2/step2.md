本練習將完成 ：
clone 模擬遠端儲存庫(remote-repo.git) 至本地資料夾(local-project2)
→ 建立並切換到新分支（dev_login)
→ 建立初始檔案並提交（project2.txt）
→ 推送到模擬遠端儲存庫(remote-repo.git)

💡 步驟一 ：建立本地儲存庫並連接遠端

```bash
# ➤ 回到根目錄
cd /root

# ➤ 從遠端 clone 出一份本地儲存庫
git clone /root/remote-repo.git local-project2

# ➤ 進入本地儲存庫目錄
cd local-project2
```

💡 步驟二 ：建立並切換到新的功能分支 dev/login

```bash
# ➤ 建立並切換到 dev/login 分支
git checkout -b dev/login (git switch -c dev/login)
```

💡 步驟三 ：建立初始檔案並提交

```bash
# ➤ 建立一個新檔案
echo "This is a local project2 file for login" > project2.txt

# ➤ 將檔案加入 Git 管理
git add project2.txt

# ➤ 提交檔案並加上說明
git commit -m "[你的員編]Add project2.txt on dev/login branch"

# ➤ 將變更推送到遠端儲存庫
git push -u origin dev/login
```

💡 步驟四 ：切回 main 並合併 dev/login

```bash
# ➤ 切換回 main 分支
git checkout main

# ➤ 從遠端抓取最新的 dev/login（保險起見）
git fetch origin dev/login

# ➤ 合併 dev/login 分支進來
git merge origin/dev/login

# ➤ 將 main 推送到遠端更新內容
git push origin main
```

💡 步驟五 ：查詢推送合併結果

```bash
查看檔案 commit 紀錄,查詢 commit hash
git log --oneline -- project2.txt
查詢檔案目前於存在哪些分支
git branch --contains 「commit hash」
```
