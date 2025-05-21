````
#!/bin/bash

```{{exec interrupt}}

# Step 1: 建立模擬用的遠端裸儲存庫
mkdir -p /root/remote-repo.git
cd /root/remote-repo.git
git init --bare --initial-branch=main

# Step 2: 建立本地儲存庫並連接遠端
cd /root
git clone /root/remote-repo.git myrepo
cd myrepo

# Step 3: 建立初始檔案並提交
echo "Hello Git learners!" > info.txt
git add info.txt
git commit -m "Initial commit"
git push -u origin main

# Step 4: 顯示提示讓學員知道可以開始
echo -e "\n✅ Git 專案初始化完成！你現在可以進入 ~/myrepo 目錄，開始進行修改與 push 練習。\n"
````
