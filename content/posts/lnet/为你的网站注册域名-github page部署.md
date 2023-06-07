---
title: "为你的网站注册域名-Github Page部署"
date: 2023-02-18T06:43:06+08:00
lastmod: 2023-02-18T06:43:06+08:00
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
### 前言
众所周知 github 在国内访问速度缓慢，所以本片网站可能需要科学上网
### 准备工作
在腾讯云解析域名的需要添加一条记录，类型CNAME 记录值为 你的github用户名.github.io 主机记录为blog 其他默认但要确保你的域名有SSL证书    
### 开始绑定
首先去网址: github.com/你的github用户名/你的github用户名.github.io/settings/pages 找到 Custom domain 选项 在图片箭头所指的框内填入 blog.你的域名 再点击 Save 等待 10 ~ 15 分钟后就可以了