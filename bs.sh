rm -fr public
hugo
cd public
git init
git add .
git commit -m "blog"
git remote add origin https://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@github.com/x3fang/x3fang.github.io.git
git remote set-url origin https://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@github.com/x3fang/x3fang.github.io.git
git push -u -f origin master

