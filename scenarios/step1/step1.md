本練習將完成 ：
建立一個模擬遠端儲存庫(remote-repo.git)
→ 建立本地開發資料夾與檔案(porject1.txt)
→ 將本地檔案（porject1.txt）推送到模擬遠端儲存庫 main 分支(remote-repo.git)

💡 步驟ㄧ ：設定 Git 的使用者資訊，包含名稱與 email，這些資訊會出現在你的每一次 commit 紀錄中。

```bash
# ➤ 設定使用者名稱
git config --global user.name "你的名字or員編"

# ➤ 設定使用者信箱
git config --global user.email "你的信箱"
```

💡 步驟二 ：建立模擬遠端儲存庫(類似建立一個 github 環境)：

```bash
# ➤ 建立資料夾
mkdir -p /root/remote-repo.git

# ➤ 進入資料夾
cd /root/remote-repo.git

# ➤ 初始化為 bare repository，「儲存庫」＝沒有檔案內容，只有 Git 版本記錄 :
git init --bare --initial-branch=main
```

💡 步驟三：建立本地開發資料夾與檔案

```bash
# ➤ 建立模擬的開發資料夾
mkdir -p /root/local-project1

# ➤ 進入該資料夾
cd /root/local-project1

# ➤ 建立一個檔案
echo "This is a local project1 file." > project1.txt
```

💡 步驟四：初始化 Git 與提交檔案

```bash
# ➤ 初始化為 Git 儲存庫
git init --initial-branch=main

# ➤ 加入檔案到版本控制cd
git add project1.txt

# ➤ 提交檔案
git commit -m "[ˊ 你的員編]Add project1.txt"
```

💡 步驟五：連接模擬遠端儲存庫並推送

```bash
# ➤ 設定遠端位置（origin）
git remote add origin /root/remote-repo.git

# ➤ 推送到遠端 main 分支
git push -u origin main
```

💡 步驟六：查看及推送檔案結果

```bash
查看commit log
git log
git show main:project1.txtgit
```
