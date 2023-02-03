---
title: "用hugo建站 PaperMod主题"
date: 2023-01-01T08:39:43+08:00
draft: false
comments: true
tags:
  - hugo
  - 建站
  - PaperMod
keywords:
  - hugo
  - 建站
  - PaperMod
categories:
  - hugo
  - 建站
  - PaperMod
ShowToc: true
---
## 首先安装git
linux
    
    
    
    
    
    
    
    apt-get install git
windows: 我推荐在阿里源下载[阿里源git下载](https://npm.taobao.org/mirrors/git-for-windows/ "阿里源git下载")选择对应版本下载后打开按提示进行安装

## 安装与部署hugo
先登录root用户
    sudo -i
选择一个目录我选择顶级目录
    
    
    
    
    
    
    
    cd ..
安装hugo
    
    
    
    
    
    
    
    apt-get install hugo

创建博客目录并进入
    
    
    
    
    
    
    
    mkdir hugo&&cd hugo
    hugo new site blog&&cd blog

安装PaperMod主题(也可以到hugo官网下载主题:[hugo官网](https://www.gohugo.org/theme/ "hugo官网")把clone后面的网址换一下,themes/后面的换成主题名字):
    
    
    
    
    
    
    
    git clone https://github.com/adityatelange/hugo-PaperMod.git themes/hugo-PaperMod
### 修改站点配置文件
修改站点配置文件(config.toml我建议修改为config.yaml 命令:mv config.toml config.yaml)
    
    
    
    
    
    
    
    nano config.yaml
yaml
    
    
    
    
    
    
    
    #把所有的=改为: (注意:后面有一个空格)
    添加theme: 主题名字
toml
    
    
    
    
    
    
    
    添加theme = 主题名字
比如我的站点配置:
    
    
    
    
    
    
    
    baseURL: "http://x3fang.github.io/"
    languageCode: "zh-cn"
    title: "x3fang的博客"
    theme: hugo-PaperMod
    enableInlineShortcodes: true
    enableEmoji: true
    enableRobotsTXT: true
    
    hasCJKLanguage: true
    
    buildDrafts: false
    buildFuture: false
    buildExpired: false
    
    #googleAnalytics: UA-123-45 # 谷歌统计
    # Copyright: Sulv
    
    paginate: 15    
    
    minify:
        disableXML: true
        # minifyOutput: true
    
    permalinks: 
      post: "/:title/"
      # post: "/:year/:month/:day/:title/"
    
    defaultContentLanguage: en
    defaultContentLanguageInSubdir: true
    languages:
        en:
          languageName: "English"
          weight: 1
          profileMode:
            enabled: true
            title: (〃'
            subtitle: "学而时习之，不亦说乎？有朋自远方来，不亦乐乎？<br/>欢迎光临x3fang的博客<br/>"
            buttons:
              - name: 技术
                url: posts/tech
              - name: 阅读
                url: posts/read
              - name: 生活
                url: posts/life
              - name: 游戏
                url: posts/games
              - name: 建站
                url: posts/lnet
          menu:
           main:
             - identifier: home
               name: 主页
               url: /
             - identifier: posts
               name: 所有文章
               url: posts
    outputs:
        home:
            - HTML
            - RSS
            - JSON
    params:
        toc: true
        env: production # to enable google analytics, opengraph, twitter-cards and schema.
        # description: "这是一个纯粹的博客......"
        author: x3fang
        # author: ["Me", "You"] # multiple authors
        defaultTheme: auto 
        disableThemeToggle: false
        DateFormat: "2006-01-02"
        ShowShareButtons: true
        ShowReadingTime: true
        # disableSpecialistPost: true
        displayFullLangName: true
        ShowPostNavLinks: true
        ShowBreadCrumbs: true
        ShowCodeCopyButtons: true
        hideFooter: false # 隐藏页脚
        ShowWordCounts: true
        VisitCount: true
    
        ShowLastMod: true #显示文章更新时间
    
        ShowToc: true # 显示目录
        TocOpen: true # 自动展开目录
    
        comments: true
        ShowBreadCrumbs: true
        socialIcons:
            - name: github主页
              url: "https://github.com/x3fang"
            - name: QQ
              url: "img/qq.png"
            - name: 邮件
              url: "mailto:fmhjyeu514144541@163.com"
            - name: 网页源代码
              url: "index.xml"
        utterances:
            owner: "x3fang"
            repo: "x3fang.github.io"
    markup:
        goldmark:
            renderer:
                unsafe: true # HUGO 默认转义 Markdown 文件中的 HTML 代码，如需开启的话
            # codeFences：代码围栏功能，这个功能一般都要设为 true 的，不然很难看，就是干巴巴的-代码文字，没有颜色。
            # guessSyntax：猜测语法，这个功能建议设置为 true, 如果你没有设置要显示的语言则会自动匹配。
            # hl_Lines：高亮的行号，一般这个不设置，因为每个代码块我们可能希望让高亮的地方不一样。
            # lineNoStart：行号从编号几开始，一般从 1 开始。
            # lineNos：是否显示行号，我比较喜欢显示，所以我设置的为 true.
            # lineNumbersInTable：使用表来格式化行号和代码,而不是 标签。这个属性一般设置为 true.
            # noClasses：使用 class 标签，而不是内嵌的内联样式
        highlight:
            anchorLineNos: false
            codeFences: true
            guessSyntax: false
            hl_Lines: ""
            lineAnchors: ""
            lineNoStart: 1   #行从几开始
            lineNos: false   #是否显示行列
            lineNumbersInTable: true
            noClasses: true
            style: monokai   #代码样式
            tabWidth: 4
具体可以参考[Sulv's blog](https://www.sulvblog.cn/posts/blog/build_hugo/#4%e9%85%8d%e7%bd%ae%e6%96%87%e4%bb%b6)  
## 写文章


输入hugo new 文章名称.md就会在content目录下生成 “文章名称.md” 名字的文件，所有文章都是放在content这个文件夹里
如果自己还定义了分类目录，如在content目录的posts目录下有blog、read、tech、life等文章分类，那么在用命令生成文章的时候，如果要把文章生成到指定目录，可以用命令：hugo new posts/tech/文章名称.md，这样就会把文章生成到tech目录下
生成的文章内部头部配置信息包括一些文章名称，时间之类的信息，可以事先在目录archetypes/default.md下使用模板，这样在用命令hugo new生成文章后会自动加上模板里的配置
我的模板如下（里面有一些字段是我自己自定义的，不是papermod默认带有的，直接使用该字段可能会无效，请酌情使用）:
（注意：这是PaperMod主题的配置，通用的请看 官方文档的Front Matter配置 或各个主题自己的配置）
    
    
    
    
    
    
    
    ---
    title: "{{ replace .Name "-" " " | title }}"
    date: {{ .Date }}
    draft: false
    comments: true
    tags:
      - hugo
    keywords:
      - hugo
    categories:
      - hugo
    author: ["x3fang"]
    ---
## 部署到github
因为github方面在2018年的一些原因
只能使用个人访问令牌上传文件,先注册一个github账户,再创建一个格式为: 你的用户名.github.io的存储库
定位到hugo博客的根目录输入
    
    
    
    
    
    
    
    hugo
    #生成网站静态文件
    cd public
    #定位到网站静态文件存放目录
    git init
    #初始化git
    git add .
    #添加目录下的所有文件
    git commit -m "blog"
    #将内容写入暂存区并命名为blog
    git remote add origin https://你的个人访问令牌@github.com/你的用户名/你的用户名.github.io.git
    git remote set-url origin https://你的个人访问令牌@github.com/你的用户名/你的用户名.github.io.git
    git push -u -f origin master
    #将暂存区的内容写入远程仓库
等待几分钟后浏览器访问你的用户名.github.io就可以看到你的网站了    
