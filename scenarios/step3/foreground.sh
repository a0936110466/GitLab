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
