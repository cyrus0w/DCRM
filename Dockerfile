FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --default-timeout=1000 --no-cache-dir -q -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

COPY . .
CMD ["./uwsgi-run.sh"]

