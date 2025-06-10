# 建立模擬遠端儲存庫（如果尚未存在）
mkdir -p /root/remote-repo.git
cd /root/remote-repo.git
git init --bare --initial-branch=main

cd /root
git clone /root/remote-repo.git devA
cd devA


# ➤ 建立並切換到 dev_login 分支
git checkout  dev_login

echo "Add by DevA" > project3.txt
git init
git config user.name "Dev A"
git config user.email "a@example.com"
git add project3.txt
git commit -m "[devA]Initial commit from Dev A on dev_login"
git push -u origin dev_login
echo "Modified by developer A" >> project3.txt
git add project3.txt
git commit -m "[devA]update project3.txt"
git push
