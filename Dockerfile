FROM python:slim

MAINTAINER Hollow Man <hollowman@hollowman.ml>

LABEL version="1.0.0"
LABEL repository="https://github.com/HollowMan6/GitHub-Issues-to-Wechat"
LABEL homepage="https://hollowman.ml/"
LABEL maintainer="Hollow Man <hollowman@hollowman.ml>"

COPY entrypoint.sh /entrypoint.sh
COPY GitHub-Issues-to-Wechat.py /GitHub-Issues-to-Wechat.py
COPY requirements.txt /requirements.txt

RUN chmod +x /entrypoint.sh
RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir -r /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
