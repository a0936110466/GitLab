本練習將完成 ：
學員將練習如何使用 Git 將多個 commit 合併（squash）成一個，再推送到遠端倉庫。這是整理 commit 歷史、提交乾淨 PR 的重要技巧。

💡 步驟一：正在一個功能分支 dev/project6，確認目前已經有三個 commit、所在分支：

```bash
# ➤ 查詢commit歷史紀錄
git log --oneline
git branch
```

💡 步驟二 ：合併commit

```bash
# ➤ 使用rebase重新整理 commit 歷史(這個指令會讓你重新編排 整個分支的所有 commit)
git rebase -i --root

# ➤ 修改為squash，將第二和第三行的 pick 改成 squash 或 s(將該 commit 的內容合併到前一個 commit，並一起編輯 commit message)：
pick   890f4e8 [feature][project6] Initial commit
squash 2eccdeb [feature][project6] commit2
squash 622492b [feature][project6] commit3

# ➤ 編輯合併後的 commit message
[feature][project6] 合併三次 commit：Initial + commit2 + commit3

# ➤ 推送到遠端 
git push origin dev/project6

```

💡 步驟三 ：檢查是否合併成功
```bash

# ➤ 檢查 commit 數量
git log --oneline

# ➤ 檢查檔案內容是否包含三次修改
cat project6.txt

```
