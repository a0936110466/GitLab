本練習將完成 ：
模擬 Git 衝突的產生與解決,已為你預先建立好一個遠端儲存庫（/root/remote-repo.git），並由「開發者 A」提交並推送了一份檔案更新(project3.txt)。
你現在的角色是「開發者 B」，請嘗試對相同檔案進行修改並推送，將會遇到版本衝突，接著學習如何解決。

💡 步驟一：切換到 local-project2 的工作目錄

```bash
cd /root/local-project2
```

💡 步驟二 ：模擬開發者修改並嘗試推送

```bash
git checkout dev/login
echo "Modified by developer B1887" >> project3.txt
git add project3.txt
git commit -m "[你的員編]update project3.txt"
git push
```

💡 步驟三 ： 拉取遠端內容並解決衝突

```bash
git pull origin dev/login
cat project3.txt

```

💡 步驟四 ： 完成衝突解決並推送

```bash
git add project.txt
git commit
git push

```
