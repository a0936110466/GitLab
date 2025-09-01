本練習將完成 ：
你正在開發 `dev/role` 功能分支，還沒寫完，突然有個緊急 bug 要切去 `bugfix` 處理。  
但你不想把未完成的程式碼 commit 上去，這時候就可以用 `git stash` 把改動先收起來，等你修完 bug 回來再還原。

💡 步驟一：模擬一段未提交的修改

```bash

# ➤ 建立並切換到開發分支
git checkout -b dev/role

# ➤ 模擬一段開發中的修改 (你應該會看到 role.js 是「modified」狀態，但尚未 commit。)
echo "role UI feature in progress..." >> role.js
git add role.js

# ➤ 查看目前修改狀況
git status
```

💡 步驟二 ：使用 git stash 暫存改動

```bash
# ➤ 使用 stash 將未提交的改動暫存起來
git stash push -m "role UI developing"

# ➤ 確認工作目錄變乾淨了(nothing to commit, working tree clean)
git status
```

💡 步驟三 ： 切去 bugfix 分支修 bug

```bash
# ➤ 切換到 bugfix 分支
git checkout -b bugfix

# ➤ 模擬修 bug 的 commit
echo "Fix bug in homepage" > index.html
git add index.html
git commit -m "[bugfix][homepage] fix bug"


```

💡 步驟四 ：使用 cherry-pick 把 bugfix 撈回dev/login分支

```bash
# ➤ 查看 bugfix 分支的 commit 記錄，複製commit hash
git log --oneline
# ➤ 切回 dev/login 分支
git checkout dev/login

# ➤ 使用 cherry-pick 把那筆 commit 拿過來
git cherry-pick [hash]

# ➤ 確認 main 分支是否已有 bugfix commit
git log --oneline

```

💡 步驟四 ： 回來開發分支並還原 stash

```bash
# ➤ 切回原本的開發分支
git checkout dev/role

# ➤ 查看目前 stash 清單
git stash list

# ➤ 還原剛剛的 stash
git stash pop

# ➤ 檢查目前 role.js 的內容
cat role.js

```
