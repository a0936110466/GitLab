本練習將完成 ：
模擬 Git 衝突的產生與解決,已為你預先建立好一個遠端儲存庫（/root/remote-repo.git），並由「開發者 A」提交並推送了一份檔案更新(project3.txt)。
你現在的角色是「開發者 B」，請嘗試對相同檔案進行修改並推送，將會遇到版本衝突，接著學習如何解決。

💡 步驟一：切換到 local-project3 的工作目錄

```bash
cd /root
git clone -b dev/login /root/remote-repo.git devB
cd devB


```

💡 步驟二 ：模擬開發者修改並嘗試推送

```bash
sed -i '2s/.*/Modified by Dev B/' project3.txt
git config user.name "Dev B"
git config user.email "b@example.com"
git add project3.txt
git commit -m "[devB]Update line for conflict demo"

```

💡 步驟三 ： 拉取遠端內容並解決衝突

```bash
git pull origin dev/login
會看到 project3.txt 出現 <<<<<<< HEAD 等衝突標記
cat project3.txt

# 解決衝突：手動修改檔案 → 保留你要的版本或合併
# 例如：
# Start of file
# >>>>>>> HEAD
# Modified by Dev B1887
# =======
# Modified by Dev A
# <<<<<<<


```

💡 步驟四 ： 完成衝突解決並推送

```bash
git add project3.txt
git commit  -m "[B1887]resolve conflict"
git push

```


