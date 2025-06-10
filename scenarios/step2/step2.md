本練習將完成 ：「本地資料夾 → Git 初始化 → 加入檔案 → 推送到模擬遠端儲存庫

💡 步驟一：建立本地開發資料夾與檔案

```bash
# ➤ 建立模擬的開發資料夾
mkdir -p /root/local-project2

# ➤ 進入該資料夾
cd /root/local-project2

# ➤ 建立一個檔案
echo "This is a local project2 file." > project2.txt
```

💡 步驟二：初始化 Git 與提交檔案

```bash
# ➤ 初始化為 Git 儲存庫
git init

# ➤ 加入檔案到版本控制
git add project.txt

# ➤ 提交檔案
git commit -m "Add project2.txt"
```

💡 步驟三：連接模擬遠端儲存庫並推送

```bash
# ➤ 設定遠端位置（origin）
git remote add origin /root/remote-repo.git

# ➤ 推送到遠端 main 分支
git push -u origin main
```
