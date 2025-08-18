本練習將完成 ：
學員將練習如何使用 Git 將多個 commit 合併（squash）成一個，再推送到遠端倉庫。這是整理 commit 歷史、提交乾淨 PR 的重要技巧。

💡 步驟一：正在一個功能分支 local-project6，確認目前已經有三個 commit、所在分支：

```bash
# ➤ 查詢commit歷史紀錄
git log --oneline
git branch
```

💡 步驟二 ：合併commit

```bash
# ➤ 使用rebase重新整理 commit 歷史
git rebase -i HEAD~3

# ➤ 修改為squash，將第二和第三行的 pick 改成 squash 或 s：



# ➤ 查看歷史紀錄

```


