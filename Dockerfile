FROM python:3.6-slim

RUN mkdir /app
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt
COPY . /app
WORKDIR /app
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--allow-root"]
EXPOSE 8888
