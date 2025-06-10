# 建立模擬遠端儲存庫（如果尚未存在）
mkdir -p /root/remote-repo.git
cd /root/remote-repo.git
git init --bare --initial-branch=main

cd /root
git clone /root/remote-repo.git devA
cd devA
echo "This is a local project file." > project3.txt
git init
git config user.name "Dev A"
git config user.email "a@example.com"
git add project3.txt
git commit -m "Initial commit from Dev A"
git branch -M main
git push -u origin main
echo "Modified by developer A" >> project3.txt
git add project.txt
git commit -m "Dev A: update project.txt"
git push
