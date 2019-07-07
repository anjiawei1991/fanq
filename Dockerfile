FROM python:2.7

RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv
RUN pip install shadowsocks

# bug： replace EVP_CIPHER_CTX_cleanup to EVP_CIPHER_CTX_reset
RUN sed -i "s/EVP_CIPHER_CTX_cleanup/EVP_CIPHER_CTX_reset/g"  /usr/local/lib/python2.7/site-packages/shadowsocks/crypto/openssl.py

ENV SS_PASSWD="abcdefg" 

CMD ssserver -s 0.0.0.0 -p 8388 -k $SS_PASSWD