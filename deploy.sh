# 确保脚本抛出遇到的错误
set -e

# 编译生成静态文件
npm run build

# 进入生成的文件夹
cd dist

git init
git add -A
git commit -m 'deploy'

# 发布到上面建立的第一个仓库
git push -f git@github.com:lkqqqq1234/lkqqqq1234.github.io.git main

# 返回上一次工作目录
cd -
