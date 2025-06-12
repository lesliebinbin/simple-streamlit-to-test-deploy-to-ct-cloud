FROM python:3.12.11

ADD requirements.txt /app

RUN pip3 install -r requirements.txt && \
    rm requirements.txt

EXPOSE 8501

ADD app /app

CMD ["streamlit", "run", "/app/streamlit_app.py", "--server.port", "8501"]