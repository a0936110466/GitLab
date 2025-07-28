# 建立模擬遠端儲存庫
mkdir -p /root/remote-repo.git
cd /root/remote-repo.git
git init --bare --initial-branch=main

# 開發者 A clone 儲存庫
cd /root
git clone /root/remote-repo.git devA
cd devA

# 建立 dev/login 分支
git checkout -b dev/login

# 加入範例檔案
echo -e "Start of file\nLine to modify\nEnd of file" > project3.txt

git config user.name "Dev A"
git config user.email "a@example.com"
git add project3.txt
git commit -m "[devA]Initial commit"
git push -u origin dev/login
cd /root
git clone -b dev/login /root/remote-repo.git local-project3
# 修改第二行內容
cd /root/devA
sed -i '2s/.*/Modified by Dev A/' project3.txt
git commit -am "[devA]Update line for conflict demo"
git push


