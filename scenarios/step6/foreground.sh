# 開發者 C clone 儲存庫
cd /root
git clone /root/remote-repo.git local-project6
cd local-project6


# 建立 dev/login 分支
git checkout -b dev/project6


# 加入範例檔案，第一次commit
echo -e "Start of file\ncommit1\nEnd of file" > project6.txt
git config user.name "Dev C"
git config user.email "c@example.com"
git add project6.txt
git commit -m "[feature][project6] Initial commit"

# 第二次commit
sed -i '2s/.*/commit2/' project6.txt
git add project6.txt
git commit -m "[feature][project6] commit2"


# 第三次commit
sed -i '3s/.*/commit3/' project6.txt
git add project6.txt
git commit -m "[feature][project6] commit3"

