
#!/bin/bash

# 建立開發者 A 的 clone 並推送內容
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
git remote add origin /root/remote-repo.git
git push -u origin main

# Dev A 再次修改，並成功 push，模擬先一步推送
echo "Modified by developer A" >> project3.txt
git add project.txt
git commit -m "Dev A: update project.txt"
git push
