---
title: "Hugo PaperMod主题 添加graphcomment评论"
date: 2023-01-01T12:32:47+08:00
draft: false
comments: true
tags:
  - hugo
  - PaperMod
  - graphcomment
  - 评论
keywords:
  - hugo
  - PaperMod
  - graphcomment
categories:
  - hugo
author: ["x3fang"]
---
## 注册账号并添加网站
首先注册一个graphcomment账号[graphcomment官网](https://www.graphcomment.com "graphcomment官网")  
再添加一个网站网站名字随便填，网站url填:你的github用户名.github.io,授权网域:你的github用户名.github.io  
网站语言填中文,然后按保存  
点击刚添加的网站>安装>通用代码
## 博客添加代码  
在你的博客根目录下的layouts/shortcodes文件夹新建一个graphcomment.html文件  
将graphcomment显示的代码复制到新建的graphcomment.html文件保存  
再打开博客根目录下的archetypes/default.md文件  
在最后添加{ {< graphcomment >} }   (删掉{{与}}之间的空格)  
写文章是注意不要在{ {< graphcomment >} }下面写  

