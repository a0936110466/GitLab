# Step 1 - 初始化 Git 倉庫

現在我們要在 `/root/my-git-project` 建立一個新的 Git 倉庫。

請在終端機中執行以下指令：

```bash
mkdir -p /root/my-git-project
cd /root/my-git-project
git init

echo "# Hello Git" > README.md
git add .
git commit -m "Initial commit"