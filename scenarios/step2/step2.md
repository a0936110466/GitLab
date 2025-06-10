本練習將完成 ：
clone 模擬遠端儲存庫(remote-repo.git) 至本地資料夾(local-project2)
→ 建立初始檔案並提交（project2.txt）
→ 推送到模擬遠端儲存庫(remote-repo.git)

💡 建立本地儲存庫並連接遠端

```bash
# ➤ 回到根目錄
cd /root

# ➤ 從遠端 clone 出一份本地儲存庫
git clone /root/remote-repo.git local-project2

# ➤ 進入本地儲存庫目錄
cd local-project2
```

💡 建立初始檔案並提交

```bash
# ➤ 建立一個新檔案
echo "Hello Git learners,This is project2" > project2.txt

# ➤ 將檔案加入 Git 管理
git add project2.txt

# ➤ 提交檔案並加上說明
git commit -m "Add project2.txt commit"

# ➤ 將變更推送到遠端儲存庫
git push -u origin main
```
