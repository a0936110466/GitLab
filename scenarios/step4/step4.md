本練習將完成 ：
你正在開發 `dev/login` 功能分支，還沒寫完，突然有個緊急 bug 要切去 `hotfix/fix-typo` 處理。  
但你不想把未完成的程式碼 commit 上去，這時候就可以用 `git stash` 把改動先收起來，等你修完 bug 回來再還原。

💡 步驟一：模擬一段未提交的修改

```bash

# ➤ 建立並切換到開發分支
git checkout -b dev/login_v1

# ➤ 模擬一段開發中的修改 (你應該會看到 login.js 是「modified」狀態，但尚未 commit。)
echo "Login UI feature in progress..." >> login.js
git add login.js

# ➤ 查看目前修改狀況
git status
```

💡 步驟二 ：使用 git stash 暫存改動

```bash
# ➤ 使用 stash 將未提交的改動暫存起來
git stash push -m "Login UI 開發中"

# ➤ 確認工作目錄變乾淨了(nothing to commit, working tree clean)
git status
```

💡 步驟三 ： 切去 hotfix 分支修 bug

```bash
# ➤ 切換到 hotfix 分支
git checkout -b hotfix/fix-typo

# ➤ 模擬修 bug 的 commit
echo "Fix typo in homepage" > index.html
git add index.html
git commit -m "Hotfix: fix typo"


```

💡 步驟四 ：使用 cherry-pick 把 hotfix 撈回主分支

```bash
# ➤ 查看 hotfix 分支的 commit 記錄，複製commit hash
git log --oneline
# ➤ 切回 main 分支
git checkout main

# ➤ 使用 cherry-pick 把那筆 commit 拿過來
git cherry-pick [hash]

# ➤ 確認 main 分支是否已有 hotfix commit
git log --oneline

```

💡 步驟四 ： 回來開發分支並還原 stash

```bash
# ➤ 切回原本的開發分支
git checkout dev/login_v1

# ➤ 查看目前 stash 清單
git stash list

# ➤ 還原剛剛的 stash
git stash pop

# ➤ 檢查目前 login.js 的內容
cat login.js

```
