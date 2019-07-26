# genpac 生成文件用于设置自动代理
FROM python:2.7

RUN pip install --upgrade pip 
RUN pip install --upgrade virtualenv 
RUN pip install genpac 
RUN pip install --upgrade genpac

WORKDIR /app

ENTRYPOINT ["genpac"]

CMD ["-o", "autoproxy.pac",  \
    "--gfwlist-url=\"https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt\"", \
    "--gfwlist-proxy=\"SOCKS5 127.0.0.1:1080\"", \
    "--proxy=\"SOCKS5 127.0.0.1:1080\""]