# 建立模擬遠端儲存庫
mkdir -p /root/remote-repo.git
cd /root/remote-repo.git
git init --bare --initial-branch=main

# Step 1: 切換目錄 & Clone 遠端儲存庫
cd /root
git clone /root/remote-repo.git devA
cd devA

# Step 2: 建立 dev/login 分支並建立檔案
git checkout -b dev/login
echo -e "Start of file\nLine to modify\nEnd of file" > project3.txt

# Step 3: 設定 Git 使用者資料並提交
git config user.name "Dev A"
git config user.email "a@example.com"
git add project3.txt
git commit -m "[devA]Initial commit"
git push -u origin dev/login

# Step 4: 修改 project3.txt 第二行為 Dev A 的版本並提交
sed -i '2s/.*/Modified by Dev A/' project3.txt
git add project3.txt
git commit -m "[devA]Update line for conflict demo"
git push



