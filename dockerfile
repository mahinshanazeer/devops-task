FROM python:alpine3.17
WORKDIR /stackgenie
RUN pip install -r requirements.txt
COPY app.py .
COPY create_db.py .
COPY drop_db.py .
COPY cmd.sh .
CMD ["sh", "/stackgenie/cmd.sh"]
EXPOSE 3000
