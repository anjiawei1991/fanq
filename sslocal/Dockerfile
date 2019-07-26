FROM python:2.7

RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv
RUN pip install shadowsocks

RUN sed -i "s/EVP_CIPHER_CTX_cleanup/EVP_CIPHER_CTX_reset/g"  /usr/local/lib/python2.7/site-packages/shadowsocks/crypto/openssl.py

ENTRYPOINT ["sslocal", "-b", "0.0.0.0", "-l", "1080"] 
