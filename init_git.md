# 如何将一个已存在的目录转换为一个 GIT 项目并托管到 GITHUB 仓库

怎么知道本地有设置？`git config --local --list` 看一眼。
怎么查看本地属性？ `git config user.name/email`。

总共以下几个步骤：

一、 打开命令行终端，进入项目所在的本地目录，将目录初始化为一个 Git 项目

> $ git init
此时会在目录中创建一个 .git 隐藏文件夹

二、 将所有文件放进新的本地 git 仓库

> $ git add .
如果你本地已经有 .gitignore 文件，会按照已有规则过滤不需要添加的文件。如果不想要添加所有文件，可以把 . 符号换成具体的文件名

三、 将添加的文件提交到仓库

> $ git commit -m "Initial commit"
四、 访问 GitHub创建一个新仓库

为了避免冲突，先不要勾选 README 和 LICENSE 选项

五、 在生成的项目主页上，复制仓库地址

类似于 https://github.com/superRaytin/alipay-app-ui.git

六、  回到命令行终端界面，将本地仓库关联到远程仓库

> $ git remote add origin https://github.com/superRaytin/alipay-app-ui.git

可运行以下命令查看结果：

> $ git remote -v
七、 提交代码到 GitHub 仓库

> $ git push origin master

## 1. Generate an SSH key
### Linux/Mac
Open terminal to create ssh keys:
```bash
cd ~                 #Your home directory
ssh-keygen -t rsa    #Press enter for all values
```
### For Windows
(Only works if the commit program is capable of using certificates/private & public ssh keys)
	1	Use Putty Gen to generate a key
	2	Export the key as an open SSH key
Here is a walkthrough on putty gen for the above steps

## 2. Associate the SSH key with the remote repository
This step varies, depending on how your remote is set up.
- If it is a GitHub repository and you have administrative privileges, go to settings and click 'add SSH key'. Copy the contents of your `~/.ssh/id_rsa.pub` into the field labeled 'Key'.
- If your repository is administered by somebody else, give the administrator your `id_rsa.pub`.
- If your remote repository is administered by your, you can use this command for example: 
```bash
scp ~/.ssh/id_rsa.pub YOUR_USER@YOUR_IP:~/.ssh/authorized_keys/id_rsa.pub
```

## 3. Set your remote URL to a form that supports SSH
If you have done the steps above and are still getting the password prompt, make sure your repo URL is in the form
git+ssh://git@github.com/username/reponame.git
as opposed to
https://github.com/username/reponame.git
To see your repo URL, run:
git remote show origin
You can change the URL with:
git remote set-url origin git+ssh://git@github.com/username/reponame.git

