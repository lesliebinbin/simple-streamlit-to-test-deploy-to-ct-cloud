FROM registry-crs-huadong1.ctyun.cn/open-source/python:3.9-slim

ADD requirements.txt .

RUN pip3 install -r requirements.txt && \
    rm requirements.txt

EXPOSE 8501

ADD app /app

WORKDIR /app

CMD ["streamlit", "run", "streamlit_app.py", "--server.port", "8501", "--server.address", "0.0.0.0"]