# chozo99.github.io

## github.io

Jekyll theme

* <https://dreamgonfly.github.io/blog/jekyll-remote-theme/>
  * <https://github.com/just-the-docs/just-the-docs>
  * <https://github.com/sighingnow/jekyll-gitbook>
  * <https://jekyllrb.com/docs/themes/>

## github: Key is already in use

* <https://yookeun.github.io/tools/2016/06/26/git-multi-ssh/>

해당키가 어떤 계정인지 체크

```shell
$ ssh -T -ai ~/.ssh/id_rsa git@github.com
Hi kh-cho-ascentko! You've successfully authenticated, but GitHub does not provide shell access.
```

```txt
-T      Disable pseudo-terminal allocation.
-a      Disables forwarding of the authentication agent connection.
-i identity_file
            Selects a file from which the identity (private key) for public key authentication is read.
```

* ssh key 생성

```shell
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### ssh config

```txt
Host github-chozo99.com
    HostName github.com
    User chozo99
    IdentityFile ~/.ssh/chozo99_rsa
Host github.com
    HostName github.com
    User chozo99-02
    IdentityFile ~/.ssh/id_rsa
```

### change git remote repository

```shell
git remote remove origin
git remote add origin git@github-chozo99.com:chozo99/chozo99.github.io.git
git branch --set-upstream-to=origin/main main
```

### 수식 테스트

<https://en.wikipedia.org/wiki/Help:Displaying_a_formula#Formatting_using_TeX>

$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$

$$a^2 + b^2 = c^2$$

$$x_{n} = x_{n-1} + n$$
