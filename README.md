# gin
Docker 部署gin

## 运行
* 构建容器
> docker build -t jihuago_api:v0.1 . 

* 运行容器
> docker run -d  -p 8080:8080 --name jihuago_api jihuago_api:v0.1