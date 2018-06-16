## 部署VPS
可以参考以下VPS提供商
1. VULTR
2. Digital Ocean
3. Google Cloud Engine

安装指南：

2. [Digital Ocean](https://segmentfault.com/a/1190000011564797) (可参考前4章的VPS申请步骤，ss部署部分相对较老，可参考以下章节)


## 安装Shadowsocks-libev
[Shadowsocks-libev Github](https://github.com/shadowsocks/shadowsocks-libev)

以下仅介绍ubuntu 14.04

- 安装Shadowsocks

```
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
sudo apt-get update
sudo apt install shadowsocks-libev
```
- 修改配置文件
`sudo vim /etc/shadowsocks-libev/config.json`

注意以下几点：
1. server_port 最好修改成其他端口
2. 修改密码
3. chacha20-ietf-poly1305 对arm架构较为友好，能耗以及资源耗用相对较低，推荐使用

```
{
    "server":"0.0.0.0",
    "server_port":8388,
    "local_port":1080,
    "password":"1qaz2wsx",
    "timeout":60,
    "method":"chacha20-ietf-poly1305"
}
```
- 启动service
`sudo service shadowsocks-libev start`

## 安装shadowsocks客户端
[下载页面](https://github.com/shadowsocks/shadowsocks-windows/releases)

