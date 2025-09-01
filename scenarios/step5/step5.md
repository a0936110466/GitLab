本練習將完成 ：
學會如何還原錯誤操作、取消提交、整理 commit 歷史
實務情境包括：

- 不小心 commit 錯東西
- 想恢復到上一步
- 想讓 commit 記錄乾淨清楚

💡 步驟一：事前準備
```bash
# ➤ clone遠端模擬遠端除存庫至本地
cd /root
git clone /root/remote-repo.git reset-lab
cd reset-lab
```

💡 步驟二 ：模擬產生幾個 commit

```bash
# ➤ 建立檔案並提交
echo "Initial content" > notes.txt
git add .
git commit -m "Init notes"

echo "Added typo" >> notes.txt
git commit -am "Add typo"

echo "debug log..." > debug.txt
git add .
git commit -m "Add debug log"

echo "Final correct content" >> notes.txt
git commit -am "Final clean content"

# ➤ 查看歷史紀錄
git log --oneline
```

💡 步驟三 ：git reset（回到過去，徹底重寫歷史（想要回到「Add typo」那一步，連後面 commit 一起丟掉（不保留歷史））

```bash
# ➤ 回到舊版 commit，讓之後的東西全部丟掉（⚠危險！）
# ➤--hard  會把 工作目錄 的檔案也一起「回溯」，未 commit 的東西會 完全消失！
git reset --hard HEAD~2

# ➤ 查看目前 log （Final clean content 和 Add debug log 已被刪除。）
git log --oneline


```

💡 步驟四 ：git revert（安全取消一個 commit，不動其他）

```bash
# ➤ 重新做一次歷史提交（讓 reset-lab 回復）
#- 通常在執行像 git merge、git reset、git rebase 等操作前，Git 會自動儲存當時的 HEAD 到 ORIG_HEAD，這讓你可以「回到操作前的狀態」

git reset --hard ORIG_HEAD

# ➤ 找出那筆「有錯字」的 commit hash
git log --oneline

# ➤ 假設為 a1b2c3d，就 revert 它（Git 會產生一個新的 commit）
git revert a1b2c3d

```

💡 步驟五 ：git rebase（整理歷史，把 commit 串起來）

```bash
# ➤ 切一個功能分支 feature/rebase，然後開發幾個 commit：
git checkout -b feature/rebase

echo "About v1" > about.txt
git add .
git commit -m "About 1"

echo "About v2" >> about.txt
git commit -am "About 2"

# ➤ 現在切回 main 分支，加一個 commit 模擬其他人也有新東西：
git checkout main
echo "main 修改" >> main.log
git add .
git commit -m "Main 分支的修改"
# ➤ 把 feature/about 的 commit 重新接在 main 的後面
git checkout feature/about
git rebase main
# ➤ 查看歷史紀錄
git log --oneline --graph --all

```

💡 功能統整

```bash
| 功能   | 操作                               | 用途                            |
| ------ | ---------------------------------- | ------------------------------- |
| reset  | 回到過去、洗掉歷史                 | 本地測試錯誤還原                |
| revert | 安全取消 commit（產生反向 commit） | 團隊協作常用                    |
| rebase | 整理 commit 歷史                   | 將分支接到最新點、保持 log 乾淨 |
```
